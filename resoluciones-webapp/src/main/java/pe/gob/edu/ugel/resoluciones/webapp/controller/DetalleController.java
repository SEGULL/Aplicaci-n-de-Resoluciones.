package pe.gob.edu.ugel.resoluciones.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.edu.ugel.resoluciones.core.domain.Detalle;
import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class DetalleController {

	protected Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private ResolucionServiceImpl resolucionService;
	
	@RequestMapping(value = "detalle/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::detalle/dashboard:::::::::::::::" + resolucionService);
		model.addAttribute("listDetalle", resolucionService.ListarDetalle());
		request.getSession().setAttribute("menuHeader", "detalle");
		return "detalle/dashboard";
	}
	@RequestMapping(value = "detalle/nuevo", method = RequestMethod.GET)
	public String getFormularioNuevoItem(Model model) {
		model.addAttribute("detalle", new Detalle());
		return "detalle/form";
	}

	@RequestMapping(value = "detalle/guardar", method = RequestMethod.POST)
	public String guardar(@ModelAttribute("detalle") Detalle detalle,
			Model model) {
		resolucionService.GuardarDetalle(detalle);
		return "redirect:/detalle/dashboard";
	}
	
	
}
