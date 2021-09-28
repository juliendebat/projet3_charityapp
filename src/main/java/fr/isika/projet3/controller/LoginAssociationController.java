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
import fr.isika.projet3.service.EventServiceImpl;

@Controller
public class LoginAssociationController {

		@Autowired
	    private AssociationServiceImpl associationService;
	
		 public LoginAssociationController() {
		    }

		    public LoginAssociationController(AssociationServiceImpl associationService) {
		        this.associationService = associationService;
		    }
<<<<<<< HEAD
		
		
		 @RequestMapping(value = {"/dashboardAdmin/index" }, method = RequestMethod.GET)
		    public ModelAndView hello1(HttpServletResponse response) throws IOException {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("dashboardAdmin/index");
		        return mv;}
=======


>>>>>>> 847a577f8b7784ec40efcb2deec2bf585fc3f753
		 
		 @RequestMapping(value = {"dashboardAdmin/tables" }, method = RequestMethod.GET)
		    public ModelAndView tables(HttpServletResponse response) throws IOException {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("dashboardAdmin/tables");
		        return mv;}
		 
		 
		 @RequestMapping(value = {"/authentificationfailed" }, method = RequestMethod.GET)
		    public ModelAndView authentification(HttpServletResponse response) throws IOException {
		        ModelAndView mv1 = new ModelAndView();
		        mv1.setViewName("authentificationfailed");
		        return mv1;}
		
	    @RequestMapping(value = "/LoginAssociation2", method = RequestMethod.GET)	
	    public ModelAndView displayNewEventForm() {
	        ModelAndView mv = new ModelAndView("LoginAssociation2");
	        mv.addObject("LoginAssociation", new LoginAssociation());
	        return mv;
	    }

	    @RequestMapping(value = "/LoginAssociation2", method = RequestMethod.POST)
	    public ModelAndView connection(HttpServletRequest request,@ModelAttribute LoginAssociation loginAssociation, BindingResult result) {
	        ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/index");
	        ModelAndView mv1 = new ModelAndView("redirect:/authentificationfailed");
	        if (result.hasErrors()) {
	            return new ModelAndView("error");
	        }
	        
	         Association asso = associationService.getAssociationByEmail(loginAssociation.getEmail());
	        
	         if (asso != null) {
	        	 System.out.println("asso n'est pas nul");
	      if(asso.getEmail().equals(loginAssociation.getEmail()) && asso.getPassword()==(loginAssociation.getPassword())) {
	      

	    	  
	    	  HttpSession associationSession = request.getSession();
	    	  associationSession.setAttribute("assos", asso);
	    	
    	
	    	  return mv; 
	      }
	         
		
	      else {	    
	    	
	        return mv1;
	         }
	         
	         }
			return mv1;
	    }
}
	    	
	    
