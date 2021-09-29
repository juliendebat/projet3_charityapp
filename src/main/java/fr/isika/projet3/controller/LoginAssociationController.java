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

	@RequestMapping(value = { "/authentificationfailed" }, method = RequestMethod.GET)
	public ModelAndView authentification(HttpServletResponse response) throws IOException {
		ModelAndView mv1 = new ModelAndView();
		mv1.setViewName("authentificationfailed");
		return mv1;
	}

	@RequestMapping(value = "/LoginAssociation2", method = RequestMethod.GET)
	public ModelAndView displayNewEventForm() {
		ModelAndView mv = new ModelAndView("LoginAssociation2");
		mv.addObject("LoginAssociation", new LoginAssociation());
		return mv;
	}

//	@RequestMapping(value = "/LoginAssociation2", method = RequestMethod.POST)
//	public ModelAndView connection(HttpServletRequest request, @ModelAttribute LoginAssociation loginAssociation,
//			BindingResult result) {
//		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/index");
//		ModelAndView mv1 = new ModelAndView("redirect:/authentificationfailed");
//		if (result.hasErrors()) {
//			return new ModelAndView("error");
//		}
//		Association asso = associationService.getAssociationByEmail(loginAssociation.getEmail());
//
//		if (asso != null) {
//			System.out.println("asso n'est pas nul");
//			if (asso.getEmail().equals(loginAssociation.getEmail())
//					&& asso.getPassword() == (loginAssociation.getPassword())) {
//				HttpSession associationSession = request.getSession();
//				associationSession.setAttribute("assos", asso);
//				return mv;
//			} 	
//		
//		return null;
//		}
//		return mv1;
//	}


	
	@RequestMapping(value = "/checkEmailAndPassword", method = RequestMethod.POST)
	public @ResponseBody 
	String checkConnexion(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("mdp") int mdp) throws NotFoundException {		
		boolean ok = associationService.isAuthentificationOk(email, mdp);	
		if(ok) 
		{
			Association asso = associationService.getAssociationByEmail(email);
			HttpSession associationSession = request.getSession();
			associationSession.setAttribute("assos", asso);				
			 return "succes";
		}
		else  return "error"; 
		 
	}	
	

}
