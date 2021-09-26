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
import fr.isika.projet3.service.IPartnerEntityService;
import fr.isika.projet3.service.IPartnerService;
import fr.isika.projet3.service.IUserService;

@Controller
public class PartnerControler {
	// Constructor based Dependency Injection
	 
	   @Autowired
		private IUserService userService;
	    
        @Autowired
	    private IPartnerService partnerService ;
        
        @Autowired
	    private IPartnerEntityService partnerEntityService ;
	    

		public PartnerControler() {
		}

		public PartnerControler(IPartnerService partnerService) {
			super();
			this.partnerService = partnerService;
		}


		// Get All Users
		@RequestMapping(value = "/allUsers", method = RequestMethod.POST)
		public ModelAndView displayAllUser() {
			System.out.println("User Page Requested : All Users");
			ModelAndView mv = new ModelAndView();
			List userList = userService.getAllUsers();
			mv.addObject("userList", userList);
			mv.setViewName("allUsers");
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
