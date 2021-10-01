package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.LoginAssociation;
import fr.isika.projet3.service.AssociationServiceImpl;
import fr.isika.projet3.service.EventServiceImpl;
import javassist.NotFoundException;

@Controller
public class LoginAssociationController {

	@Autowired
	private AssociationServiceImpl associationService;

	public LoginAssociationController() {
	}

	public LoginAssociationController(AssociationServiceImpl associationService) {
		this.associationService = associationService;
	}


	@RequestMapping(value = "/LoginAssociation2", method = RequestMethod.GET)
	public ModelAndView displayNewEventForm() {
		ModelAndView mv = new ModelAndView("LoginAssociation2");
		return mv;
	}




	
	@RequestMapping(value = "/checkEmailAndPasswordAsso", method = RequestMethod.POST)
	public @ResponseBody 
	String checkConnexion(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("mdp") String mdp) throws NotFoundException {		
		boolean ok = associationService.isAuthentificationOk(email, mdp);	
		if(ok) 
		{
			Association asso = associationService.getAssociationByEmail(email);
			HttpSession associationSession = request.getSession();
			associationSession.setAttribute("assos", asso);				
			 return "success";
		}
		else  return "error";
		 
	}	
	

}
