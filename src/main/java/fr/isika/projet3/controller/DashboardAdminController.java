package fr.isika.projet3.controller;

import fr.isika.projet3.entities.*;
import fr.isika.projet3.repository.UserRepository;
<<<<<<< HEAD
import fr.isika.projet3.service.MailService;
=======
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.PartnerEntityService;
import fr.isika.projet3.service.PartnerService;
>>>>>>> ee197663900a69ecf0588cfa8478b88ba5de9216
import fr.isika.projet3.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
=======
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
>>>>>>> ee197663900a69ecf0588cfa8478b88ba5de9216
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@Controller
public class DashboardAdminController {

<<<<<<< HEAD
	private MailService mailService;

	private String emailSender = "bravoexcellent74@gmail.com";

	private HttpSession associationSession;
	private Association ass;

	private UserService userService;

	public DashboardAdminController(UserService userService, MailService mailService) {
		this.userService = userService;
		this.mailService = mailService;
	}

	@RequestMapping(value = { "/dashboardAdmin/home" }, method = RequestMethod.GET)
	public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
	
		// recupérer session de LoginControler
		associationSession = request.getSession();
		ass = (Association) associationSession.getAttribute("assos");
		mv.setViewName("dashboardAdmin/home");

		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/usersList", method = RequestMethod.GET)
	public ModelAndView displayAllUsers() {
		ModelAndView mv = new ModelAndView("/dashboardAdmin/usersList");
		List<User> usersList = userService.getAllUserByAssociation(ass);
		mv.addObject("usersList", usersList);

		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/mailForm/{id}", method = RequestMethod.GET)
	public ModelAndView mailSender(HttpServletRequest request, @PathVariable Long id) {
		ModelAndView mv = new ModelAndView("dashboardAdmin/mailForm");
		User user = userService.getUserById(id);
		String userMail = user.getEmail();
		mv.addObject("userMail", userMail);
		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/mailForm/{id}", method = RequestMethod.POST)
	public ModelAndView mailsend(HttpServletRequest request, @PathVariable Long id) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/home");
		User user = userService.getUserById(id);
		String userMail = user.getEmail();
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		mailService.sendEmail(emailSender, userMail, subject ,message );
		return mv;
	}
	@RequestMapping(value = { "/dashboardAdmin/headerAdmin" }, method = RequestMethod.GET)
	public ModelAndView initHeader(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/headerAdmin");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/404" }, method = RequestMethod.GET)
	public ModelAndView init404(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/404");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/footerAdmin" }, method = RequestMethod.GET)
	public ModelAndView initFooter(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/footerAdmin");
		return mv;

	}

	@RequestMapping(value = { "/dashboardAdmin/content" }, method = RequestMethod.GET)
	public ModelAndView initContent(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/content");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/allPartnersAss" }, method = RequestMethod.GET)
	public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/allPartnersAss");
		List<User> partners = userService.getAllPartnersByAssociation(ass);
		mv.addObject("partnerlist", partners);
		return mv;
	}

	// julien kill session
	@RequestMapping(value = "/killSession")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/loginAssociation"; // Where you go after logout here.
	}

=======
	private HttpSession associationSession;
	private Association ass;

	@Autowired
    private UserService userService;
	@Autowired
    private PartnerService partnerService;
	@Autowired
    private PartnerEntityService partnerEntityService;
	@Autowired
    private DonationService donationService;


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
    
    //Partners
    @RequestMapping(value = {"/dashboardAdmin/allPartnersAss"}, method = RequestMethod.GET)
    public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allPartnersAss");        
       List<Partner> partners= userService.getAllPartnersByAssociation(ass);
       mv.addObject("partnerlist", partners );
       mv.addObject("ass",ass);
        return mv;}
    
    @RequestMapping(value = "/dashboardAdmin/editPartner/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditPartnerForm(@PathVariable Long id) {
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
	public ModelAndView saveEditedPartner(@ModelAttribute User user, @ModelAttribute Partner partner, @ModelAttribute("entity") PartnerEntity entity, BindingResult result) {
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

	
	
	//Donations
	    @RequestMapping(value = "/dashboardAdmin/allDonations", method = RequestMethod.GET)
	    public ModelAndView displayAllDonations() {
		ModelAndView mv = new ModelAndView("/dashboardAdmin/allDonations");

		List<User> contributors = userService.getAllContributorsByAssociation(ass);
		List<Donation> donations = donationService.getAllDonationByAssociation(contributors);
		mv.addObject("donations", donations);

		return mv;
	}
	    
	    @RequestMapping(value = "/dashboardAdmin/checkDonation/{id}", method = RequestMethod.GET)
	    public ModelAndView checkDonation(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/allDonations");

	   donationService.checkDonation(id);
	   

		return mv;
	}
	
	    @RequestMapping(value = "/dashboardAdmin/cancelDonation/{id}", method = RequestMethod.GET)
	    public ModelAndView cancelDonation(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/allDonations");

	   donationService.cancelDonation(id);

		return mv;
	}
	
	    
	    //test Aminie liste user
	    @RequestMapping(value = "/dashboardAdmin/userList", method = RequestMethod.GET)
	    public ModelAndView displayAllUsers() {
	       ModelAndView mv = new ModelAndView("/dashboardAdmin/userList");
	       List<User> usersList = userService.getAllUserByAssociation(ass);
	       mv.addObject("usersList", usersList);
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
>>>>>>> ee197663900a69ecf0588cfa8478b88ba5de9216
}
