package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.UserService;

@Controller
public class DonationController {

	@Autowired
	private DonationService donationService;
	
	@Autowired
	private UserService userService;
	@Autowired
	private AssociationService associationService;

	public DonationController() {
		super();
	}

	public DonationController(DonationService donationService) {
		super();
		this.donationService = donationService;
	}

	@RequestMapping(value = { "donation/home_donation" }, method = RequestMethod.GET)
	public ModelAndView initFooter(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("donation/home_donation");
		return mv;
	}

	@RequestMapping(value = "donation/add_donation/{id}", method = RequestMethod.GET)
	public ModelAndView displayNewDonationForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("donation/add_donation");
		mv.addObject("headerMessage", "Add partner Details");
		mv.addObject("user", new User());
		mv.addObject("donation", new Donation());
		return mv;
	}
	@RequestMapping(value = "donation/add_donation/{id}", method = RequestMethod.POST)
	public ModelAndView saveNewDonation(@PathVariable Long id, @ModelAttribute("User") User user,
	@ModelAttribute("donation") Donation donation, BindingResult result) {
	ModelAndView mv = new ModelAndView("/donation/home_donation");
	
	Association association = associationService.getAssociationById(id);
	user.setAssociation(association);
	
	if (result.hasErrors()) {
		return new ModelAndView("error");
	}	
	    user.setHasDonated(true);
	    donation.setUser(user);	   
	    boolean isDonationAdded = donationService.saveDonation(donation);
        Double sum = donation.getAmount();
        
	if ( isDonationAdded) {
		mv.addObject("message", "Merci pour votre don ! ");
		mv.addObject("sum",sum);
		mv.addObject("id",id);
	} else {
		return new ModelAndView("error");
	}
	return mv;
	}
	
	

	
}
