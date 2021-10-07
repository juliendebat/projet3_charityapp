package fr.isika.projet3.controller;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.LoginAssociation;
import fr.isika.projet3.service.AssociationServiceImpl;
import javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@Controller
public class LoginAssociationController {

    @Autowired
    private AssociationServiceImpl associationService;


    public LoginAssociationController() {
    }

    public LoginAssociationController(AssociationServiceImpl associationService) {
        this.associationService = associationService;
    }


    @RequestMapping(value = "/loginAssociation", method = RequestMethod.GET)
    public ModelAndView displayNewEventForm() {
        ModelAndView mv = new ModelAndView("loginAssociation");
        mv.addObject("loginAssociation", new LoginAssociation());
        return mv;
    }


    @RequestMapping(value = "/checkEmailAndPassword", method = RequestMethod.POST)
    public @ResponseBody
    String checkConnexion(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("mdp") String mdp) throws NotFoundException {
        boolean ok = associationService.isAuthentificationOk(email, mdp);
        if (ok) {
            Association asso = associationService.getAssociationByEmail(email);
            HttpSession associationSession = request.getSession();
            associationSession.setAttribute("assos", asso);
            return "success";
        } else return "error";

    }

}
