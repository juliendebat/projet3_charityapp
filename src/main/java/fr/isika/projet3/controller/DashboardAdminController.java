package fr.isika.projet3.controller;

import fr.isika.projet3.entities.*;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.PartnerEntityService;
import fr.isika.projet3.service.PartnerService;
import fr.isika.projet3.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

	@Autowired
    private UserService userService;
	@Autowired
    private PartnerService partnerService;
	@Autowired
    private PartnerEntityService partnerEntityService;


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
    @RequestMapping(value = {"/dashboardAdmin/allPartnersAss"}, method = RequestMethod.GET)
    public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allPartnersAss");        
       List<User> partners= userService.getAllPartnersByAssociation(ass);
       mv.addObject("partnerlist", partners );
       mv.addObject("ass",ass);
        return mv;}
    
    @RequestMapping(value = "/dashboardAdmin/editPartner/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditUserForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("/dashboardAdmin/editPartner");
		User user = userService.getUserById(id);
		Partner partner = partnerService.getPartnerByUser(user);
		PartnerEntity entity=partnerEntityService.getPartnerEntityByPartner(partner);
		mv.addObject("headerMessage", "Edit Partner Details");
		mv.addObject("user", user);
		mv.addObject("partner",partner);
		mv.addObject("entity",entity);
		return mv;
	}
    
    
	@RequestMapping(value = "/dashboardAdmin/editPartner/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedUser(@ModelAttribute User user, @ModelAttribute Partner partner, @ModelAttribute("entity") PartnerEntity entity, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/allPartnersAss");
// areprendre
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}		
		        user.setAssociation(ass);	
		        
		        boolean isPartnerEntityAdded = true;
		    	
				boolean isPartnerAdded = true;

					isPartnerEntityAdded=false;
					
					entity.setPartner(partner);
					//partner.setPartnerentity(partnerentity);
					
		            //isUserAdded = userService.saveUser(user);	
					partner.setUser(user);				
					//isPartnerAdded = partnerService.savePartner(partner);		
					 isPartnerEntityAdded = partnerEntityService.savePartnerEntity(entity);
				
				
		if ( !isPartnerEntityAdded ) {
			return new ModelAndView("error");
		}
		return mv;
	}

    //julien kill session
    @RequestMapping(value = "/killSession")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:../loginAssociation";  //Where you go after logout here.
    }

}
