package fr.isika.projet3.controller;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.IAssociationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class AssociationController {

    private AssociationService associationService;

    public AssociationController() {
    }

    @Autowired
    public AssociationController(AssociationService associationService) {
        this.associationService = associationService;
    }
    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public ModelAndView hello(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
    @RequestMapping(value = "/addAssociation", method = RequestMethod.GET)
    public ModelAndView displayNewUserForm() {
        ModelAndView mv = new ModelAndView("addAssociation");
        mv.addObject("headerMessage", "Add User Details");
        mv.addObject("association", new Association());
        return mv;
    }

    @RequestMapping(value = "/addAssociation", method = RequestMethod.POST)
    public ModelAndView saveNewUser(@ModelAttribute Association association, BindingResult result) {
        ModelAndView mv = new ModelAndView("redirect:/index");

        if (result.hasErrors()) {
            return new ModelAndView("error");
        }
        boolean isAdded = associationService.saveAssociation(association);
        if (isAdded) {
            mv.addObject("message", "New Association successfully added");
        } else {
            return new ModelAndView("error");
        }

        return mv;
    }
}
