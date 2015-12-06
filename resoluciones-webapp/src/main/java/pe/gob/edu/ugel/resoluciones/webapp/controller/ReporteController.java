package pe.gob.edu.ugel.resoluciones.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReporteController {

	protected Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "reporte/resoluciones", method = RequestMethod.GET)
	public String dashboard(HttpServletRequest request,ModelMap model) {
		logger.info("::::::::::::reporte/resoluciones:::::::::::::::");
		model.addAttribute("codigo", "-21331313");
		model.addAttribute("format", "pdf");

		return "resoluciones";
	}
}
