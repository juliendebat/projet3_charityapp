package fr.isika.projet3.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.service.AssociationService;

@Controller
public class AssociationController {
	// Constructor based Dependency Injection
	  @Autowired
		private AssociationService associationService;

		public AssociationController() {

		}

		//@Autowired
		public AssociationController(AssociationService associationService) {
			this.associationService = associationService;
		}


		@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
		public ModelAndView hello(HttpServletResponse response) throws IOException {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home");
			return mv;
		}

		// Get All Associations
		@RequestMapping(value = "/allAssociations", method = RequestMethod.POST)
		public ModelAndView displayAllAssociation() {
			System.out.println("Association Page Requested : All Associations");
			ModelAndView mv = new ModelAndView();
			List<Association> associationList = associationService.getAllAssociations();
			mv.addObject("associationList", associationList);
			mv.setViewName("allAssociations");
			return mv;
		}

		@RequestMapping(value = "/addAssociation", method = RequestMethod.GET)
		public ModelAndView displayNewAssociationForm() {
			ModelAndView mv = new ModelAndView("addAssociation");
			mv.addObject("headerMessage", "Add Association Details");
			mv.addObject("association", new Association());
			return mv;
		}

		@RequestMapping(value = "/addAssociation", method = RequestMethod.POST)
		public ModelAndView saveNewAssociation(@ModelAttribute Association association, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/home");

			if (result.hasErrors()) {
				return new ModelAndView("error");
			}
			boolean isAdded = associationService.saveAssociation(association);
			if (isAdded) {
				mv.addObject("message", "New association successfully added");
			} else {
				return new ModelAndView("error");
			}

			return mv;
		}

		@RequestMapping(value = "/editAssociation/{id}", method = RequestMethod.GET)
		public ModelAndView displayEditAssociationForm(@PathVariable Long id) {
			ModelAndView mv = new ModelAndView("/editAssociation");
			Association association = associationService.getAssociationById(id);
			mv.addObject("headerMessage", "Edit Association Details");
			mv.addObject("association", association);
			return mv;
		}

		@RequestMapping(value = "/editAssociation/{id}", method = RequestMethod.POST)
		public ModelAndView saveEditedAssociation(@ModelAttribute Association association, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/home");

			if (result.hasErrors()) {
				System.out.println(result.toString());
				return new ModelAndView("error");
			}
			boolean isSaved = associationService.saveAssociation(association);
			if (!isSaved) {

				return new ModelAndView("error");
			}

			return mv;
		}

		@RequestMapping(value = "/deleteAssociation/{id}", method = RequestMethod.GET)
		public ModelAndView deleteAssociationById(@PathVariable Long id) {
			boolean isDeleted = associationService.deleteAssociationById(id);
			System.out.println("Association deletion response: " + isDeleted);
			ModelAndView mv = new ModelAndView("redirect:/home");
			return mv;

		}

}