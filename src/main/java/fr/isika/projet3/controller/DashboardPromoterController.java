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
import fr.isika.projet3.service.EventService;
import fr.isika.projet3.service.PromoterService;

@Controller
public class DashboardPromoterController {

	private User promoterInProgress;
	private HttpSession promoterSession;
	
    private PromoterService promoterService ;
 
    private EventService eventService ;
    
	@Autowired
	public DashboardPromoterController(PromoterService promoterService,EventService eventService) {
		super();
		this.promoterService = promoterService;
		this.eventService=eventService;
	}

	@RequestMapping(value = { "/dashboardPromoter/home" }, method = RequestMethod.GET)
	public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		
		promoterSession = request.getSession();
		promoterInProgress = (User) promoterSession.getAttribute("promotersession");
		
		Promoter promoterinProgress=promoterService.getPromotertByUser(promoterInProgress);
		List<Event> levent = eventService.getEventsByPromoter(promoterinProgress);
		
				// recupérer session de LoginControler
		
		mv.setViewName("dashboardPromoter/home");
		mv.addObject("levent",levent);
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
	
	
	@RequestMapping(value = "/dashboardPromoter/editPromoter/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditPromoterForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("dashboardPromoter/editPromoter");
		Promoter promoter = promoterService.getPromoterById(id);
		mv.addObject("headerMessage", "Edit promoter Details");
		mv.addObject("promoter", promoter);
		return mv;
	}

	@RequestMapping(value = "/dashboardPromoter/editPromoter/{id}", method = RequestMethod.POST)
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
	
	@RequestMapping(value = "/dashboardPromoter/editEvent/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditEventForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("dashboardPromoter/editEvent");
		Event event = eventService.getEventById(id);
		mv.addObject("headerMessage", "Edit Event Details");
		mv.addObject("event", event);
		return mv;
	}

	@RequestMapping(value = "/dashboardPromoter/editEvent/{id}", method = RequestMethod.POST)
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

	@RequestMapping(value = "/dashboardPromoter/deleteEvent/{id}", method = RequestMethod.GET)
	public ModelAndView deleteEventById(@PathVariable Long id) {
		boolean isDeleted = eventService.deleteEventById(id);
		System.out.println("Event deletion response: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/dashboardPromoter/home");
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
