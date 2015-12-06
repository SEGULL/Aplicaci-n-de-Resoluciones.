package pe.gob.edu.ugel.resoluciones.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.edu.ugel.resoluciones.service.services.ResolucionServiceImpl;

@Controller
public class DocenteController {

	protected Log logger = LogFactory.getLog(getClass());

	@Autowired
	private ResolucionServiceImpl resolucionService;

	@RequestMapping(value = "docente/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		logger.info("::::::::::::docente/dashboard:::::::::::::::" + resolucionService);
		
		model.addAttribute("listDocente", resolucionService.ListarDocente());
		
		request.getSession().setAttribute("menuHeader", "docente");
		
		return "docente/dashboard";
	}

}
