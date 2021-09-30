package fr.isika.projet3.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.UserService;

@Controller
public class DonationController {

	@Autowired
	private DonationService donationService;
	
	@Autowired
	private UserService userService;

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

	@RequestMapping(value = "donation/add_donation", method = RequestMethod.GET)
	public ModelAndView displayNewDonationForm() {
		ModelAndView mv = new ModelAndView("donation/add_donation");
		mv.addObject("headerMessage", "Add partner Details");
		mv.addObject("user", new User());
		mv.addObject("donation", new Donation());
		return mv;
	}

	@RequestMapping(value = "donation/add_donation", method = RequestMethod.POST)
	public ModelAndView saveNewDonation(@ModelAttribute("User") User user,
	@ModelAttribute("donation") Donation donation, BindingResult result) {
	ModelAndView mv = new ModelAndView("redirect:/donation/home_donation");
	mv.addObject("don", donation);
	if (result.hasErrors()) {
		return new ModelAndView("error");
	}		
	boolean isDonationAdded = donationService.saveDonation(donation);
	   user.addDonation(donation);
	   user.setHasDonated(true);
	   boolean isUserAdded = userService.saveUser(user);	
        donation.setDonnateur(user);
	if (isUserAdded && isDonationAdded) {
		mv.addObject("message", "New partner successfully added");
	} else {
		return new ModelAndView("error");
	}
	return mv;
	}
	
	
	
	
}
