package pe.gob.edu.ugel.resoluciones.webapp.controller;

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

import pe.gob.edu.ugel.resoluciones.core.domain.Resolucion;
import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class ResolucionController {

	protected Log logger = LogFactory.getLog(getClass());
	@Autowired
	private ResolucionServiceImpl resolucionService;

	@RequestMapping(value = "resolucion/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::resolucion/dashboard:::::::::::::::"
				+ resolucionService);
		model.addAttribute("listResolucion",
				resolucionService.ListarResolucion());
		request.getSession().setAttribute("menuHeader", "resolucion");
		return "resolucion/dashboard";
	}

	@RequestMapping(value = "resolucion/nuevo", method = RequestMethod.GET)
	public String getFormularioNuevo(Model model) {
		model.addAttribute("resolucion", new Resolucion());
		return "resolucion/form";
	}

	
	
	@RequestMapping(value = "resolucion/{id}", method = RequestMethod.GET)
	public String getFormulario(@PathVariable String id, Model model) {
		model.addAttribute("resolucion",
				resolucionService.IdResolResolItem(Integer.parseInt(id)));
		return "resolucion/form";
	}

	@RequestMapping(value = "resolucion/{id}/items", method = RequestMethod.GET)
	public String getItems(@PathVariable String id, Model model) {
		model.addAttribute("resolucion",
				resolucionService.IdResolResolItem(Integer.parseInt(id)));

		return "resolucion/form";
	}

	@RequestMapping(value = "resolucion/guardar", method = RequestMethod.POST)
	public String guardar(@ModelAttribute("resolucion") Resolucion resolucion,
			Model model) {
		resolucionService.GuardarResolucion(resolucion);
		return "redirect:/resolucion/dashboard";
	}

}
