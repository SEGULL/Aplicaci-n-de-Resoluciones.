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

import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.core.domain.ItemResol;
import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class ItemresolController {
	protected Log logger = LogFactory.getLog(getClass());
	@Autowired
	private ResolucionServiceImpl resolucionService;
	@RequestMapping(value = "itemresol/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::itemresol/dashboard:::::::::::::::" + resolucionService);
		model.addAttribute("listItemResol", resolucionService.ListarItemResol());
		request.getSession().setAttribute("menuHeader", "itemresol");
		return "itemresol/dashboard";
	}
	
	
	@RequestMapping(value = "itemresol/nuevo", method = RequestMethod.GET)
	public String getFormularioNuevoItem(Model model) {
		model.addAttribute("itemresol", new ItemResol());
		return "itemresol/form";
	}

	@RequestMapping(value = "itemresol/guardar", method = RequestMethod.POST)
	public String guardar(@ModelAttribute("itemresol") ItemResol itemresol,
			Model model) {
		resolucionService.GuardarItemResol(itemresol);
		return "redirect:/itemresol/dashboard";
	}
	
	@RequestMapping(value = "itemresol/{id}/eliminar", method = RequestMethod.GET)
	public String getItemresoldelete(@PathVariable String id, Model model) { 
		ItemResol objt=new ItemResol();
		objt.setId(new Long(id));
		resolucionService.BorrarItemResol(objt);
		return "redirect:/itemresol/dashboard";
	}
	

}
