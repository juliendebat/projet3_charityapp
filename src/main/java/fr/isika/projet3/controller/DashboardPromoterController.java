package fr.isika.projet3.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.service.EventService;
import fr.isika.projet3.service.PartnerService;
import fr.isika.projet3.service.PromoterService;
import fr.isika.projet3.service.UserService;
import fr.isika.projet3.service.VolonteerService;

@Controller
public class DashboardPromoterController {

	private User promoterInProgress;
	private HttpSession promoterSession;
	
    private PromoterService promoterService ;
    private UserService userService ;
    private VolonteerService volonteerService ;
 
    private EventService eventService ;
    private PartnerService partnerService;
    
	@Autowired
	public DashboardPromoterController(PartnerService partnerService, PromoterService promoterService,EventService eventService, UserService userService,VolonteerService volonteerService) {
		super();
		this.promoterService = promoterService;
		this.eventService=eventService;
		this.userService=userService;
		this.volonteerService= volonteerService;
		this.partnerService= partnerService;
	}

	@RequestMapping(value = { "/dashboardPromoter/home" }, method = RequestMethod.GET)
	public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		
		promoterSession = request.getSession();
		promoterInProgress = (User) promoterSession.getAttribute("promotersession");
		
		
		
		Promoter promoterinProgress=promoterService.getPromotertByUser(promoterInProgress);
		List<Event> levent = eventService.getEventsByPromoter(promoterinProgress);
		
		List<Volonteer> volunters = volonteerService.getAllVoluntersByAssociation(promoterInProgress.getAssociation());
		
        mv.addObject("volunters",volunters);
		
		
		
		int sumFunding=partnerService.countFundingByByAssociation(promoterInProgress.getAssociation());
		
		mv.setViewName("dashboardPromoter/home");
		mv.addObject("levent",levent);
		mv.addObject("volunters",volunters);
		mv.addObject("sumFunding", sumFunding);	
		
		return mv;
	}
	
	@RequestMapping(value = "/dashboardPromoter/addEventToOnePromoter", method = RequestMethod.GET)
	public ModelAndView displayNewEventPromoterForm() {
		ModelAndView mv = new ModelAndView("dashboardPromoter/addEventToOnePromoter");
		mv.addObject("headerMessage", "Add Association Details");
		mv.addObject("event", new Event());
		return mv;
	}
	
	@RequestMapping(value = "/dashboardPromoter/addEventToOnePromoter", method = RequestMethod.POST)
	public ModelAndView saveNewEventPromoter(@ModelAttribute Event event, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");

		Promoter promoterinProgress=promoterService.getPromotertByUser(promoterInProgress);
		
		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		event.setPromoter(promoterinProgress);
		
		boolean isAdded = eventService.saveEvent(event);
		if (isAdded) {
			mv.addObject("message", "New event successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
	
	
	@RequestMapping(value = "/dashboardPromoter/editPromoter", method = RequestMethod.GET)
	public ModelAndView displayEditPromoterForm() {
		ModelAndView mv = new ModelAndView("dashboardPromoter/editPromoter");
		
		mv.addObject("headerMessage", "Edit promoter Details");
		Promoter promoterinProgress=promoterService.getPromotertByUser(promoterInProgress);
		mv.addObject("promoter", promoterinProgress);
		return mv;
	}

	@RequestMapping(value = "/dashboardPromoter/editPromoter", method = RequestMethod.POST)
	public ModelAndView saveEditedPromoter(@ModelAttribute Promoter promoter, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");
		
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}

		boolean isSaved = promoterService.savePromoter(promoter);
		if (!isSaved) {
			return new ModelAndView("error");
		}
		return mv;
	}

	@RequestMapping(value = "dashboardPromoter/deletePromoter/{id}", method = RequestMethod.GET)
	public ModelAndView deletePromoterById(@PathVariable Long id) {
		boolean isDeleted = promoterService.deletePromoterById(id);
		System.out.println("promoter deletion response: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");
		return mv;
	}
	

	@RequestMapping(value = "/dashboardPromoter/deleteEvent/{id}", method = RequestMethod.GET)
	public ModelAndView deleteEventById(@PathVariable Long id) {
		boolean isDeleted = eventService.deleteEventById(id);
		System.out.println("Event deletion response: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");
		return mv;
	}
	
	//julien 05/09
	 @RequestMapping(value = {"/dashboardPromoter/manageEvent/{id}"}, method = RequestMethod.GET)
	    public ModelAndView manageEvent(@PathVariable Long id) throws IOException {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("dashboardPromoter/manageEvent");                 
	        Event event= eventService.getEventById(id);	        
	        mv.addObject("event",event);	        
	        return mv;}
	
	 @RequestMapping(value = "/dashboardPromoter/manageEvent/{id}", method = RequestMethod.POST)
		public ModelAndView saveEditedEvent(@ModelAttribute Event event, BindingResult result) {
			ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");
			Promoter promoterinProgress=promoterService.getPromotertByUser(promoterInProgress);
			if (result.hasErrors()) {
				System.out.println(result.toString());
				return new ModelAndView("error");
			}
			event.setPromoter(promoterinProgress);
			boolean isSaved = eventService.saveEvent(event);
			if (!isSaved) {
				return new ModelAndView("error");
			}
			return mv;
		}

	@RequestMapping(value = "/killPromoterSession")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/loginPromoter";
	}
	
	
}
