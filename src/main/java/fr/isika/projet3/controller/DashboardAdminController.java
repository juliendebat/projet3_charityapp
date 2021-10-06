package fr.isika.projet3.controller;
import fr.isika.projet3.entities.*;

import fr.isika.projet3.service.MailService;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.EventService;
import fr.isika.projet3.service.PartnerEntityService;
import fr.isika.projet3.service.PartnerService;
import fr.isika.projet3.service.PromoterService;
import fr.isika.projet3.service.UserService;
import fr.isika.projet3.service.VolonteerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	private MailService mailService;
	private String emailSender = "bravoexcellent74@gmail.com";
	private HttpSession associationSession;
	private Association ass;
	private UserService userService;

	@Autowired
    private PartnerService partnerService;
	@Autowired
    private PartnerEntityService partnerEntityService;
	@Autowired
    private DonationService donationService;
	@Autowired
    private PromoterService promoterService;
	@Autowired
    private VolonteerService volunterService;
	@Autowired
    private EventService eventService;
	private AssociationService associationService;


	public DashboardAdminController(AssociationService associationService,MailService mailService, UserService userService, PartnerService partnerService,
			PartnerEntityService partnerEntityService, DonationService donationService) {
		super();
		this.mailService = mailService;
		this.userService = userService;
		this.partnerService = partnerService;
		this.partnerEntityService = partnerEntityService;
		this.donationService = donationService;
		this.associationService=associationService;
	}

	@SuppressWarnings("null")
	@RequestMapping(value = { "/dashboardAdmin/home" }, method = RequestMethod.GET)
	public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
	
		// recupérer session de LoginControler
		associationSession = request.getSession();
		ass = (Association) associationSession.getAttribute("assos");
		mv.setViewName("dashboardAdmin/home");

		
		//recuperer les compteurs dons + autres
		//-1 liste user/asso
		List<User> contributors = userService.getAllContributorsByAssociation(ass);
		List<Donation> donations =donationService.getAllDonationByAssociation(contributors);
		List<Donation> paidDonations=donationService.getAllPaidDonationsByAssociation(donations);
		List<Donation> NotpaidDonations=donationService.getAllNotPaidDonationsByAssociation(donations);
		
		double sumNotpaidDonations=0;
		double sumPaidDonation = 0;
		double sumDonation = 0;
		
		
		for (Donation donation : paidDonations) {
			sumDonation+=donation.getAmount();
		}
		
		for (Donation donation : NotpaidDonations) {
			sumNotpaidDonations+=donation.getAmount();
		}
		
		for (Donation donation : donations) {
			sumNotpaidDonations+=donation.getAmount();
		}
		
		int sumPromoter=promoterService.countPromoterByAssociation(ass);
		int sumPartner=partnerService.countPartnerByAssociation(ass);
		int sumVolunter=volunterService.countVoluntersByAssociation(ass);
		int sumEvent=eventService.countEventsByAssociation(ass);
		int sumFunding=partnerService.countFundingByByAssociation(ass);
		
		mv.addObject("sumDonation", sumNotpaidDonations);
		mv.addObject("sumPaidDonation", sumPaidDonation);
		mv.addObject("sumDonation", sumDonation);
		mv.addObject("sumPromoter", sumPromoter);
		mv.addObject("sumPartner", sumPartner);
		mv.addObject("sumVolunter", sumVolunter);
		mv.addObject("sumEvent", sumEvent);
		mv.addObject("sumFunding", sumFunding);		
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

	//Partners
    @RequestMapping(value = {"/dashboardAdmin/allPartnersAss"}, method = RequestMethod.GET)
    public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allPartnersAss");        
       List<Partner> partners= userService.getAllPartnersByAssociation(ass);
       mv.addObject("partnerlist", partners );
       mv.addObject("ass",ass);
        return mv;}
    
    @RequestMapping(value = {"/dashboardAdmin/allPromoters"}, method = RequestMethod.GET)
    public ModelAndView showAllPromoters(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allPromoters");        
       List<Promoter> promoter= userService.getAllPromoterByAssociation(ass);
       mv.addObject("promoterlist", promoter );
       mv.addObject("ass",ass);
        return mv;}
    
   
    @RequestMapping(value = {"/dashboardAdmin/allVolonteers"}, method = RequestMethod.GET)
    public ModelAndView showAllVolunteer(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allVolonteers");        
       List<Volonteer> volonteers = userService.getAllVolonteerByAssociation(ass);
       mv.addObject("volonteerslist", volonteers );
       mv.addObject("ass",ass);
        return mv;}
       
    @RequestMapping(value = {"/dashboardAdmin/allEventsAss"}, method = RequestMethod.GET)
    public ModelAndView showAllEvents(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/allEventsAss");        
       List<Event> events = eventService.getAllEventsByAssociation(ass);
       mv.addObject("events", events );
       mv.addObject("ass",ass);
        return mv;}
        
      //julien 06/09 edit one Association
    @RequestMapping(value = "/dashboardAdmin/editAssociation/{id}", method = RequestMethod.GET)
    public ModelAndView displayEditAssociationForm(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("dashboardAdmin/editAssociation");
        Association association = associationService.getAssociationById(id);
      
        mv.addObject("association", association);
        return mv;
    }
      //julien 06/09 edit one Association
    @RequestMapping(value = "/dashboardAdmin/editAssociation/{id}", method = RequestMethod.POST)
    public ModelAndView saveEditedAssociation(@ModelAttribute Association association, BindingResult result) {
        ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/home");
        if (result.hasErrors()) {
            System.out.println(result.toString());
            return new ModelAndView("error");
        }
        boolean isSaved = associationService.saveAssociation(association);
        if (!isSaved) {
            return new ModelAndView("error");
        }
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
}
