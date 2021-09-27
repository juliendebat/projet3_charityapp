package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.LoginAssociation;
import fr.isika.projet3.service.AssociationServiceImpl;

@Controller
public class LoginAssociationController {

		@Autowired
	    private AssociationServiceImpl associationService;
	
		
		 @RequestMapping(value = {"/dashboardAdmin" }, method = RequestMethod.GET)
		    public ModelAndView hello(HttpServletResponse response) throws IOException {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("dashboardAdmin");
		        return mv;}
		 
		 @RequestMapping(value = {"/authentificationfailed" }, method = RequestMethod.GET)
		    public ModelAndView authentification(HttpServletResponse response) throws IOException {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("authentificationfailed");
		        return mv;}
		
	    @RequestMapping(value = "/LoginAssociation2", method = RequestMethod.GET)	
	    public ModelAndView displayNewEventForm() {
	        ModelAndView mv = new ModelAndView("LoginAssociation2");
	        mv.addObject("LoginAssociation", new LoginAssociation());
	        return mv;
	    }

	    @RequestMapping(value = "/LoginAssociation2", method = RequestMethod.POST)
	    public ModelAndView connection(HttpServletRequest request,@ModelAttribute LoginAssociation loginAssociation, BindingResult result) {
	        ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin");
	        
	        if (result.hasErrors()) {
	            return new ModelAndView("error");
	        }
	        
	         Association asso = associationService.getAssociationByEmail(loginAssociation.getEmail());
	        
	         if (asso != null) {
	        	 System.out.println("asso n'est pas nul");
	      if(asso.getEmail().equals(loginAssociation.getEmail()) && asso.getPassword()==(loginAssociation.getPassword())) {
	      

	    	  
	    	  HttpSession associationSession = request.getSession();
	    	  associationSession.setAttribute("assos", asso);
	    	
	    	  
	    	  
	        System.out.println("asso existe");
	    	  return mv; 
	      }
	         
		
	      else {
	    	  System.out.println("asso existe PAS");
	    	  ModelAndView mv1 = new ModelAndView("redirect:/authentificationfailed");
	        return mv1;
	         }
	         }
			return null;
	    }	
	    }
