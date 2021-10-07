package fr.isika.projet3.controller;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.UserService;
import javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class DonationController {

    @Autowired
    private DonationService donationService;

    @Autowired
    private UserService userService;
    @Autowired
    private AssociationService associationService;

    //...
    String email = "";

    public String getEmail() {
        return email;
    }

    public DonationController() {
        super();
    }

    public DonationController(DonationService donationService) {
        super();
        this.donationService = donationService;
    }

    @RequestMapping(value = {"donation/home_donation"}, method = RequestMethod.GET)
    public ModelAndView initFooter(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("donation/home_donation");
        return mv;
    }

    @RequestMapping(value = "donation/add_donationstdby/{id}", method = RequestMethod.GET)
    public ModelAndView displayNewDonationForm(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("donation/add_donationstdby");
        Association association = associationService.getAssociationById(id);
        mv.addObject("headerMessage", "Add partner Details");
        mv.addObject("user", new User());
        mv.addObject("donation", new Donation());
        mv.addObject("association", association);
        mv.addObject("id", id);
        return mv;
    }

    @RequestMapping(value = "donation/add_donationstdby/{id}", method = RequestMethod.POST)
    public ModelAndView saveNewDonationNewUser(@PathVariable Long id, @ModelAttribute("User") User user,
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

        if (isDonationAdded) {
            mv.addObject("message", "Merci pour votre don ! ");
            mv.addObject("sum", sum);
            mv.addObject("id", id);
        } else {
            return new ModelAndView("error");
        }
        return mv;
    }

    @RequestMapping(value = "/checkIdentityContributor", method = RequestMethod.POST)
    @ResponseBody
    public String checkConnexion(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("idAsso") Long id) throws NotFoundException {
        Association asso = associationService.getAssociationById(id);
        this.email = email;
        boolean ok = userService.CheckContributorIdentity(email, asso);
        if (ok) return "inconnu";
        else return getUserInformation(email, asso);
    }

    public String getUserInformation(String email, Association association) {
        return userService.getUserInformation(email, association);
    }

    //encours
    @RequestMapping(value = "/donation/pageUserChecked/{id}", method = RequestMethod.GET)
    public ModelAndView userCheckedPage(@PathVariable Long id) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("donation/pageUserChecked");
        Association asso = associationService.getAssociationById(id);
        User user = userService.getUserByEmailAndAssociation(email, asso);
        List<Donation> donations = donationService.getDonationsByUser(user);
        mv.addObject("user", user);
        mv.addObject("donations", donations);
        mv.addObject("donation", new Donation());
        return mv;
    }

    @RequestMapping(value = {"donation/pageUserChecked/{id}"}, method = RequestMethod.POST)
    public ModelAndView saveNewDonationUserExist(@PathVariable Long id, @ModelAttribute("user") User user,
                                                 @ModelAttribute("donation") Donation donation, BindingResult result) throws IOException {
        ModelAndView mv = new ModelAndView("/donation/home_donation");
        Long id2 = user.getId();
        User user2 = userService.getUserById(id2);
        user2.setHasDonated(true);
        donation.setUser(user2);
        boolean isDonationAdded = donationService.saveDonation(donation);
        Double sum = donation.getAmount();
        if (isDonationAdded) {
            mv.addObject("message", "Merci pour votre don ! ");
            mv.addObject("sum", sum);
            mv.addObject("id", id);
        } else {
            return new ModelAndView("error");
        }
        return mv;
    }
}

