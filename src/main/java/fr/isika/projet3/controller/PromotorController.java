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
import fr.isika.projet3.entities.Promotor;
import fr.isika.projet3.entities.PromotorEntity;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.PromotorEntityService;
import fr.isika.projet3.service.PromotorService;
import fr.isika.projet3.service.UserService;

@Controller
public class PromotorController {
	// Constructor based Dependency Injection
	 
	   @Autowired
		private UserService userService;
	    
        @Autowired
	    private PromotorService promotorService ;
        
        @Autowired
	    private PromotorEntityService promotorEntityService ;
	    

		public PromotorController() {
		}

		public PromotorController(PromotorService promotorService) {
			super();
			this.promotorService = promotorService;
		}
		
		@RequestMapping(value = {"/home_promotor" }, method = RequestMethod.GET)
		public ModelAndView hello(HttpServletResponse response) throws IOException {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home_promotor");
			return mv;
		}
		
		// Get All Promotors
		@RequestMapping(value = "/allPromotors", method = RequestMethod.POST)
		public ModelAndView showAllPromotors() {
			System.out.println("Promotor Page Requested : All Promotors");
			ModelAndView mv = new ModelAndView();
			List<Promotor> promotorList = promotorService.getAllPromotors();
			mv.addObject("promotorList", promotorList);
			mv.setViewName("allPromotors");
			return mv;
		}

		@RequestMapping(value = "/addPromotor", method = RequestMethod.GET)
		public ModelAndView displayNewPromotorForm() {
			ModelAndView mv = new ModelAndView("addPromotor");
			mv.addObject("headerMessage", "Add promotor Details");
			mv.addObject("user", new User());
			mv.addObject("promotor", new Promotor());
			mv.addObject("promotorEntity", new PromotorEntity());
			return mv;
		}

		@RequestMapping(value = "/addPromotor", method = RequestMethod.POST)
		public ModelAndView saveNewUser(@ModelAttribute("User") User user,
				@ModelAttribute("promotorEntity") PromotorEntity promotorentity,
				@ModelAttribute("Promotor") Promotor promotor, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/home_promotor");

			if (result.hasErrors()) {
				return new ModelAndView("error");
			}
			
			boolean isPromotorEntityAdded = true;
			boolean isUserAdded = true;
			boolean isPromotorAdded = true;
			
			if (promotorentity.getEntityName() == "") {
				isUserAdded=false;
				isPromotorAdded=false;
			    isUserAdded = userService.saveUser(user);
				promotor.setUser(user);			
				isPromotorAdded = promotorService.savePromotor(promotor);
			}
			
			else {
				isUserAdded=false;
				isPromotorAdded=false;
				isPromotorEntityAdded=false;
				isPromotorEntityAdded = promotorEntityService.savePromotorEntity(promotorentity);
				
				promotor.setPromotorentity(promotorentity);
				
	            isUserAdded = userService.saveUser(user);	
				promotor.setUser(user);	
				isPromotorAdded = promotorService.savePromotor(promotor);
				
			}
			
			

			if (isUserAdded && isPromotorEntityAdded && isPromotorAdded) {
				mv.addObject("message", "New promotor successfully added");
			} else {
				return new ModelAndView("error");
			}

			return mv;
		}
		
		@RequestMapping(value = "/editPromotor/{id}", method = RequestMethod.GET)
		public ModelAndView displayEditPromotorForm(@PathVariable int id) {
			ModelAndView mv = new ModelAndView("/editPromotor");
			Promotor promotor = promotorService.getPromotorById(id);
			mv.addObject("headerMessage", "Edit promotor Details");
			mv.addObject("promotor", promotor);
			return mv;
		}

		@RequestMapping(value = "/editPromotor/{id}", method = RequestMethod.POST)
		public ModelAndView saveEditedPromotor(@ModelAttribute Promotor promotor, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/home_promotor");

			if (result.hasErrors()) {
				System.out.println(result.toString());
				return new ModelAndView("error");
			}
			boolean isSaved = promotorService.savePromotor(promotor);
			if (!isSaved) {

				return new ModelAndView("error");
			}

			return mv;
		}

		@RequestMapping(value = "/deletePromotor/{id}", method = RequestMethod.GET)
		public ModelAndView deletePromotorById(@PathVariable int id) {
			boolean isDeleted = promotorService.deletePromotorById(id);
			System.out.println("promtor deletion respone: " + isDeleted);
			ModelAndView mv = new ModelAndView("redirect:/home_promotor");
			return mv;

		}

}
