package pe.gob.edu.ugel.resoluciones.webapp.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.edu.ugel.resoluciones.core.domain.Detalle;
import pe.gob.edu.ugel.resoluciones.core.domain.Docente;
import pe.gob.edu.ugel.resoluciones.core.domain.ResolEmitida;
import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class DocenteController {

	protected Log logger = LogFactory.getLog(getClass());

	@Autowired
	private ResolucionServiceImpl resolucionService;

	@RequestMapping(value = "docente/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::docente/dashboard:::::::::::::::"
				+ resolucionService);

		model.addAttribute("listDocente", resolucionService.ListarDocente());

		request.getSession().setAttribute("menuHeader", "docente");

		return "docente/dashboard";
	}

	@RequestMapping(value = "docente/{id}/emitir-resolucion", method = RequestMethod.GET)
	public String getFormEmitirResolucion(@PathVariable String id, Model model) {
		model.addAttribute("resoluciones", resolucionService.ListarResolucion());
		model.addAttribute("emision", new ResolEmitida());
		model.addAttribute("idDocente", id);
		return "docente/emitir_resolucion";
	}

	@RequestMapping(value = "docente/{id}/guardar", method = RequestMethod.POST)
	public String guardar(@PathVariable String id,
			@ModelAttribute("emision") ResolEmitida emision, Model model) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Docente d = new Docente();
		d.setId(new Long(id));
		emision.setDocente(d);
		try {
			emision.setFechaemitida(sdf.parse(emision.getFechaemitidaS()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		resolucionService.GuardarResolucionmEmitida(emision);

		Detalle detalle = emision.getDetalle();
		detalle.setResolEmitida(emision);
		resolucionService.GuardarDetalle(detalle);

		model.addAttribute("items", resolucionService.ListarItemResol(emision
				.getResolucion().getId()));
		model.addAttribute("docente",
				resolucionService.IdDocenteResolEmit(Integer.parseInt(id)));
		model.addAttribute("emision", emision);

		return "docente/emision_resolucion_detalle";
	}
}
