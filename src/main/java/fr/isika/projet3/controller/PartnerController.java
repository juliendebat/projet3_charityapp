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

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.PartnerEntityService;
import fr.isika.projet3.service.PartnerService;
import fr.isika.projet3.service.UserService;

@Controller
public class PartnerController {
	// Constructor based Dependency Injection
	 
	   @Autowired
		private UserService userService;
	    
        @Autowired
	    private PartnerService partnerService ;
        
        @Autowired
	    private PartnerEntityService partnerEntityService ;
	    

		public PartnerController() {
		}

		public PartnerController(PartnerService partnerService) {
			super();
			this.partnerService = partnerService;
		}


		// Get All Users
		@RequestMapping(value = "/allPartners", method = RequestMethod.POST)
		public ModelAndView showAllUsers() {
			System.out.println("User Page Requested : All Users");
			ModelAndView mv = new ModelAndView();
			List userList = userService.getAllUsers();
			mv.addObject("userList", userList);
			mv.setViewName("allPartners");
			return mv;
		}

		@RequestMapping(value = "/addPartner", method = RequestMethod.GET)
		public ModelAndView displayNewUserForm() {
			ModelAndView mv = new ModelAndView("addPartner");
			mv.addObject("headerMessage", "Add partner Details");
			mv.addObject("user", new User());
			mv.addObject("partner", new Partner());
			mv.addObject("partnerEntity", new PartnerEntity());
			return mv;
		}

		@RequestMapping(value = "/addPartner", method = RequestMethod.POST)
		public ModelAndView saveNewUser(@ModelAttribute("User") User user,
				@ModelAttribute("partnerEntity") PartnerEntity partnerentity,
				@ModelAttribute("Partner") Partner partner, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/home");

			if (result.hasErrors()) {
				return new ModelAndView("error");
			}
			
			boolean isPartnerEntityAdded = true;
			boolean isUserAdded = true;
			boolean isPartnerAdded = true;
			
			if (partnerentity.getEntityName() == "") {
				isUserAdded=false;
				isPartnerAdded=false;
			    isUserAdded = userService.saveUser(user);
				partner.setUser(user);			
				isPartnerAdded = partnerService.savePartner(partner);
			}
			
			else {
				isUserAdded=false;
				isPartnerAdded=false;
				isPartnerEntityAdded=false;
				isPartnerEntityAdded = partnerEntityService.savePartnerEntity(partnerentity);
				
				partner.setPartnerentity(partnerentity);
				
	            isUserAdded = userService.saveUser(user);	
				partner.setUser(user);	
				isPartnerAdded = partnerService.savePartner(partner);
				
			}
			
			

			if (isUserAdded && isPartnerEntityAdded && isPartnerAdded) {
				mv.addObject("message", "New partner successfully added");
			} else {
				return new ModelAndView("error");
			}

			return mv;
		}

}