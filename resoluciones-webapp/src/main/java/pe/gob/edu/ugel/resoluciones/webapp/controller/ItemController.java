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

import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.core.domain.Resolucion;
import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class ItemController {
	protected Log logger = LogFactory.getLog(getClass());

	@Autowired
	private ResolucionServiceImpl resolucionService;

	@RequestMapping(value = "item/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::item/dashboard:::::::::::::::" + resolucionService);
		model.addAttribute("listItem", resolucionService.ListarItem());
		request.getSession().setAttribute("menuHeader", "item");
		return "item/dashboard";
	}

	
	@RequestMapping(value = "item/nuevo", method = RequestMethod.GET)
	public String getFormularioNuevoItem(Model model) {
		model.addAttribute("item", new Item());
		return "item/form";
	}

	@RequestMapping(value = "item/guardar", method = RequestMethod.POST)
	public String guardar(@ModelAttribute("item") Item item,
			Model model) {
		resolucionService.GuardarItem(item);
		return "redirect:/item/dashboard";
	}

}
