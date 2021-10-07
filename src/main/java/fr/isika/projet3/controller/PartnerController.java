package fr.isika.projet3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.PartnerEntityService;
import fr.isika.projet3.service.PartnerService;
import fr.isika.projet3.service.UserService;

@Controller
public class PartnerController {
	// Constructor based Dependency Injection
		private UserService userService;	    
	    private PartnerService partnerService ;       
	    private PartnerEntityService partnerEntityService ;
	    private AssociationService associationService ;
	    

		public PartnerController() {
		}

	@Autowired	
	public PartnerController(UserService userService, PartnerService partnerService,
				PartnerEntityService partnerEntityService, AssociationService associationService) {
			super();
			this.userService = userService;
			this.partnerService = partnerService;
			this.partnerEntityService = partnerEntityService;
			this.associationService = associationService;
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

	@RequestMapping(value = "/addPartner/{id}", method = RequestMethod.GET)
	public ModelAndView displayNewUserForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("addPartner");
		Association association = associationService.getAssociationById(id);
		mv.addObject("headerMessage", "Add partner Details");
		mv.addObject("user", new User());
		mv.addObject("partner", new Partner());
		mv.addObject("partnerEntity", new PartnerEntity());
		mv.addObject("association", association);
		return mv;
	}

		@RequestMapping(value = "/addPartner/{id}", method = RequestMethod.POST)
		public ModelAndView saveNewUser(@PathVariable Long id,@ModelAttribute("User") User user,
				@ModelAttribute("partnerEntity") PartnerEntity partnerentity,
				@ModelAttribute("Partner") Partner partner, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/loginPartner");
			if (result.hasErrors()) {
				return new ModelAndView("error");
			}

			Association association=associationService.getAssociationById(id);
			user.setAssociation(association);
			
			boolean isPartnerEntityAdded = true;	
			boolean isPartnerAdded = true;
			
			if (partnerentity.getEntityName() == "") {				
				isPartnerAdded=false;
				partner.setUser(user);
				isPartnerAdded = partnerService.savePartner(partner);				
			}			
			else {

				isPartnerEntityAdded=false;				
				partnerentity.setPartner(partner);				
				partner.setUser(user);					
				isPartnerEntityAdded = partnerEntityService.savePartnerEntity(partnerentity);
			}

			if ( isPartnerEntityAdded && isPartnerAdded) {
				mv.addObject("message", "New partner successfully added");
			} else {
				return new ModelAndView("error");
			}
			return mv;

	
	}

}
