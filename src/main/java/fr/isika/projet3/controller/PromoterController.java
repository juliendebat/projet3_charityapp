package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.service.AssociationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;

import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.EventService;

import fr.isika.projet3.service.PromoterService;
import fr.isika.projet3.service.UserService;

@Controller
public class PromoterController {
	// Constructor based Dependency Injection
		private UserService userService;
	    private PromoterService promoterService ;
	    private EventService eventService ;
	    private AssociationService associationService;

		public PromoterController() {
		}

		@Autowired
		public PromoterController(PromoterService promoterService, UserService userService, EventService eventService,AssociationService associationService ) {
			super();
			this.promoterService = promoterService;
			this.eventService = eventService;
			this.userService = userService;
			this.associationService = associationService;
		}
		
		@RequestMapping(value = {"/home_promoter" }, method = RequestMethod.GET)
		public ModelAndView hello(HttpServletResponse response, HttpServletRequest request) throws IOException {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home_promoter");

			return mv;
		}
		
		// Get All Promoters
		@RequestMapping(value = "/allPromoters", method = RequestMethod.POST)
		public ModelAndView showAllPromoters() {
			System.out.println("Promotor Page Requested : All Promotors");
			ModelAndView mv = new ModelAndView();

			List<Promoter> promoterList = promoterService.getAllPromoters();
			mv.addObject("promoterList", promoterList);
			mv.setViewName("allPromoters");
			return mv;
		}

		@RequestMapping(value = "/addPromoter/{id}", method = RequestMethod.GET)
		public ModelAndView displayNewPromotorForm(@PathVariable Long id) {
			ModelAndView mv = new ModelAndView("addPromoter");
			mv.addObject("headerMessage", "Add promoter Details");
			mv.addObject("user", new User());
			mv.addObject("promoter", new Promoter());
//			mv.addObject("event", new Event());
			mv.addObject("association", new Association());
			return mv;
		}

		@RequestMapping(value = "/addPromoter/{id}", method = RequestMethod.POST)
<<<<<<< HEAD
		public ModelAndView saveNewUser(@PathVariable int id, @ModelAttribute User user,@ModelAttribute Association association,
				@ModelAttribute Promoter promoter, @ModelAttribute Event event, BindingResult result) {
=======
		public ModelAndView saveNewUser(@PathVariable Long id, @ModelAttribute User user,@ModelAttribute Association association,
				@ModelAttribute Promoter promoter, BindingResult result) {
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b
			ModelAndView mv = new ModelAndView("redirect:/home_promoter");
			
			if (result.hasErrors()) {
				return new ModelAndView("error");
			}
				association = associationService.getAssociationById(id);
				user.setAssociation(association);
				promoter.setUser(user);
<<<<<<< HEAD
				event.setPromoter(promoter);
				
				boolean isEventAdded = eventService.saveEvent(event);

=======
				//event.setPromoter(promoter);
				//boolean isPromoterAdded = promoterService.savePromoter(promoter);
				//boolean isUserAdded = userService.saveUser(user);
				boolean isEventAdded = promoterService.savePromoter(promoter);
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b

			if ( isEventAdded ) {
				mv.addObject("message", "New promotor successfully added");
			} else {
				return new ModelAndView("error");
			}
			return mv;
		}
		
//		@RequestMapping(value = "/editPromoter/{id}", method = RequestMethod.GET)
//		public ModelAndView displayEditPromoterForm(@PathVariable Long id) {
//			ModelAndView mv = new ModelAndView("/editPromoter");
//			Promoter promoter = promoterService.getPromoterById(id);
//			mv.addObject("headerMessage", "Edit promoter Details");
//			mv.addObject("promoter", promoter);
//			return mv;
//		}
//
//		@RequestMapping(value = "/editPromoter/{id}", method = RequestMethod.POST)
//		public ModelAndView saveEditedPromoter(@ModelAttribute Promoter promoter, BindingResult result) {
//			ModelAndView mv = new ModelAndView("redirect:/home_promoter");
//		
//
//			if (result.hasErrors()) {
//				System.out.println(result.toString());
//				return new ModelAndView("error");
//			}
//			boolean isSaved = promoterService.savePromoter(promoter);
//			if (!isSaved) {
//
//				return new ModelAndView("error");
//			}
//
//			return mv;
//		}
//
//		@RequestMapping(value = "/deletePromoter/{id}", method = RequestMethod.GET)
//		public ModelAndView deletePromoterById(@PathVariable Long id) {
//			boolean isDeleted = promoterService.deletePromoterById(id);
//			System.out.println("promoter deletion response: " + isDeleted);
//			ModelAndView mv = new ModelAndView("redirect:/home_promoter");
//			return mv;
//
//		}

}