package fr.isika.projet3.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.LoginAssociation;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.UserService;

@Controller
public class LoginAssociationController {

		
	 private AssociationService associationService;
	 
	 public LoginAssociationController() {
			
		}
	
	 @Autowired
		public LoginAssociationController(AssociationService associationService) {
			this.associationService = associationService;
		}


	 @RequestMapping(value = "/login_association", method = RequestMethod.GET)
		public ModelAndView displayNewLoginAssociationForm() {
			ModelAndView mv = new ModelAndView("login_association");
			
			mv.addObject("loginAssociation", new LoginAssociation());
			return mv;
		}

		@RequestMapping(value = "/login_association", method = RequestMethod.POST)
		public ModelAndView validateLoginAssociation(@ModelAttribute LoginAssociation loginAssociation, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/dashboard_association");

			if (result.hasErrors()) {
				return new ModelAndView("error");
			}
			Association association = associationService.getAssociationByEmail(loginAssociation.getEmail());
			if (association != null) {
				mv.addObject("message", "l'association a bien été trouvée");
			} else {
				return new ModelAndView("error");
			}

			return mv;
		}
	

	
	
}