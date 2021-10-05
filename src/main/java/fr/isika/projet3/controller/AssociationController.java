package fr.isika.projet3.controller;


import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.DonationService;
import fr.isika.projet3.service.MailService;
import fr.isika.projet3.service.UserService;
import javassist.NotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class AssociationController {

    private AssociationService associationService;

    private MailService mailService;
    private String mailReceiver;
    private String subject = "FELICITATION";
    private String emailSender = "bravoexcellent74@gmail.com";
    private String message = "Bonjour" +
            "Ce mail vous confirme votre inscription !!!!";

   
    private UserService userService;

	private DonationService donationService;
	
	   static {
	    	
	    	Association asso = new Association();
	    	asso.setAssociationName("testLancemennt");
	    	System.out.println("bloc static");
	    }

    public AssociationController() {

    }

    @Autowired
    public AssociationController(AssociationService associationService, MailService mailService,UserService userService,DonationService donationService) {
        this.associationService = associationService;
        this.mailService = mailService;
        this.donationService=donationService;
        this.userService=userService;


    }


    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public ModelAndView hello(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        List<Association> associationList = associationService.getAllAssociations();
        mv.addObject("associationList", associationList);
        mv.setViewName("home");
        return mv;
    }

    // Get All Associations
    @RequestMapping(value = "/allAssociations", method = RequestMethod.POST)
    public ModelAndView displayAllAssociation() {
        System.out.println("Association Page Requested : All Associations");
        ModelAndView mv = new ModelAndView();
        List<Association> associationList = associationService.getAllAssociations();
        mv.addObject("associationList", associationList);
        mv.setViewName("allAssociations");
        return mv;
    }

    @RequestMapping(value = "/addAssociation", method = RequestMethod.GET)
    public ModelAndView displayNewAssociationForm() {
        ModelAndView mv = new ModelAndView("addAssociation");
        mv.addObject("headerMessage", "Add Association Details");
        mv.addObject("association", new Association());
        return mv;
    }

    //add one Association
    @RequestMapping(value = "/addAssociation", method = RequestMethod.POST)
    public ModelAndView saveNewAssociation(HttpServletRequest request, @ModelAttribute Association association, BindingResult result) {
        ModelAndView mv = new ModelAndView("redirect:/loginAssociation");

        if (result.hasErrors()) {
            return new ModelAndView("error");
        }
        boolean isAdded = associationService.saveAssociation(association);
        if (isAdded) {
            mv.addObject("message", "New association successfully added");

            HttpSession associationSession = request.getSession();
            Association asso = associationService.getAssociationById(association.getId());
            mailReceiver = asso.getEmail();
            associationSession.setAttribute("asso", asso);
            mailService.sendEmail(emailSender, mailReceiver, subject, message);
        } else {
            return new ModelAndView("error");
        }

        return mv;
    }

    //edit one Association
    @RequestMapping(value = "/editAssociation/{id}", method = RequestMethod.GET)
    public ModelAndView displayEditAssociationForm(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("/editAssociation");
        Association association = associationService.getAssociationById(id);
        mv.addObject("headerMessage", "Edit Association Details");
        mv.addObject("association", association);
        return mv;
    }

    @RequestMapping(value = "/editAssociation/{id}", method = RequestMethod.POST)
    public ModelAndView saveEditedAssociation(@ModelAttribute Association association, BindingResult result) {
        ModelAndView mv = new ModelAndView("redirect:/home");

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

    //delete one association
    @RequestMapping(value = "/deleteAssociation/{id}", method = RequestMethod.GET)
    public ModelAndView deleteAssociationById(@PathVariable Long id) {
        boolean isDeleted = associationService.deleteAssociationById(id);
        System.out.println("Association deletion response: " + isDeleted);
        ModelAndView mv = new ModelAndView("redirect:/home");
        return mv;

    }


    //edit one Association
    @RequestMapping(value = "/homePageAssociation/{id}", method = RequestMethod.GET)
    public ModelAndView displayHomePageAssociationForm(@PathVariable Long id) {
        ModelAndView mv = new ModelAndView("/homePageAssociation");
        Association association = associationService.getAssociationById(id);
        mv.addObject("headerMessage", "Edit home Page Association Details");
        mv.addObject("association", association);

        //maj compteur don
		List<User> contributors = userService.getAllContributorsByAssociation(association);
		Double sumDonations = donationService.getSumDonationsByAssociation(contributors);
	    mv.addObject("sumdonations",sumDonations);

        
        return mv;
    }
    
    
    
    //julien check Asso existe
    @RequestMapping(value = "/checkAssociationAlreadyExist", method = RequestMethod.POST)
	@ResponseBody
    public String checkAssociationAlreadyExist(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("rna") int rna) throws NotFoundException{
	    boolean isRnaOK  =associationService.isRnaNumberAlreadyUsed(rna);
	    boolean isEmailOk=associationService.isEmailNotAlreadyUsed(email);
	    
	    if (isRnaOK && isEmailOk) return "success";
	    else return "Les informations fournies ne nous permettent pas de créer de compte, veuillez vérifier votre numéro RNA, ou veuillez choisir un autre email.";
		
}

}
