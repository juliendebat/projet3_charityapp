package fr.isika.projet3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import fr.isika.projet3.entities.LoginAssociation;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.UserService;
import javassist.NotFoundException;

@Controller
public class LoginPromoterController {


        private UserService userService;

	    public LoginPromoterController() {
	    }
	    
	    
	       @Autowired
	    public LoginPromoterController(UserService userService) {
			super();
			this.userService = userService;
		}



		@RequestMapping(value = "/loginPromoter2/{id}", method = RequestMethod.GET)
	    public ModelAndView displayPromoterConnexionPAge(@PathVariable Long id) {
	        ModelAndView mv = new ModelAndView("loginPromoter2");
	        mv.addObject("loginAssociation", new LoginAssociation());
	        mv.addObject("id",id);
	        return mv;
	    }


		@RequestMapping(value = "/checkEmailAndPasswordPromoter", method = RequestMethod.POST)
		@ResponseBody 
		public String checkConnexion(HttpServletRequest request, @RequestParam("id") Long id,
		@RequestParam("email") String email, @RequestParam("mdp") String mdp) throws NotFoundException {

			boolean ok = userService.isPromoterConnected(email, mdp, id);
			if (ok) {
				 HttpSession associationSession = request.getSession();
				 User promoter=userService.getUserByEmail(email);
		            associationSession.setAttribute("promotersession", promoter);
				return "success";}
				
			else return "error";
				 

		}
		
}
