package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.service.AssociationService;

@Controller
public class HomeAssociationPageController {
	
	private AssociationService associationService;

	public HomeAssociationPageController() {

	}
	

	@RequestMapping("/homePageAssociation")
	public String associationForm() {
		// model.addAttribute("association", new Association());
		return "homePageAssociation";
	}

	@Autowired
	public HomeAssociationPageController(AssociationService associationService) {
		this.associationService = associationService;
	}


	@RequestMapping(value = {"/homePageAssociation" }, method = RequestMethod.GET)
	public ModelAndView hello(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homePageAssociation");
		return mv;
	}

	// Get All Associations
	@RequestMapping(value = "/homePageAssociation", method = RequestMethod.POST)
	public ModelAndView displayAllAssociation() {
		System.out.println("Association Page Requested : All Associations");
		ModelAndView mv = new ModelAndView();
		List<Association> associationList = associationService.getAllAssociations();
		mv.addObject("associationList", associationList);
		mv.setViewName("allAssociations");
		return mv;
	}
	
}
