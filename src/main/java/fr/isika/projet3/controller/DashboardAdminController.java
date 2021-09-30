package fr.isika.projet3.controller;

import fr.isika.projet3.entities.*;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@Controller
public class DashboardAdminController {

	
	private HttpSession associationSession;
	private Association ass;

    private UserService userService;

    public DashboardAdminController(UserService userService) {
        this.userService = userService;
    }

    
    @RequestMapping(value = {"/dashboardAdmin/index" }, method = RequestMethod.GET)
    public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();

        // recupérer session de LoginControler
       associationSession = request.getSession();
       ass= (Association) associationSession.getAttribute("assos");       
       mv.setViewName("dashboardAdmin/index");
        return mv;
    }

    @RequestMapping(value = {"/dashboardAdmin/headerAdmin" }, method = RequestMethod.GET)
    public ModelAndView initHeader(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/headerAdmin");
        return mv;
    }   
    @RequestMapping(value = {"/dashboardAdmin/footerAdmin" }, method = RequestMethod.GET)
    public ModelAndView initFooter(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/footerAdmin");
        return mv;
    }   
    @RequestMapping(value = {"/dashboardAdmin/allPartnersAss" }, method = RequestMethod.GET)
    public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allPartnersAss");        
       List<User> partners= userService.getAllPartnersByAssociation(ass);
       mv.addObject("partnerlist", partners );         
        return mv;}
    
    //julien kill session
    @RequestMapping(value = "/killSession")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/LoginAssociation2";  //Where you go after logout here.
    }

}
