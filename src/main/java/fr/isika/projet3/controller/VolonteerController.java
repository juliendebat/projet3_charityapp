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
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.service.AssociationService;
import fr.isika.projet3.service.EventService;
import fr.isika.projet3.service.UserService;
import fr.isika.projet3.service.VolonteerService;

@Controller
public class VolonteerController {
	// Constructor based Dependency Injection
	private VolonteerService volonteerService;
	private EventService eventService;
	private UserService userService;
	private AssociationService associationService;


	public VolonteerController() {

	}

	@Autowired
	public VolonteerController(VolonteerService volonteerService, UserService userService,
			AssociationService associationService, EventService eventService) {
		super();
		this.volonteerService = volonteerService;
		this.eventService = eventService;
		this.userService = userService;
		this.associationService = associationService;
	}
	
	


	@RequestMapping(value = {"/home_volonteer"}, method = RequestMethod.GET)
	public ModelAndView index(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home_volonteer");
		return mv;
	}

	// Get All Users
	@RequestMapping(value = "/allVolonteers", method = RequestMethod.GET)
	public ModelAndView displayAllVolonteers() {
		System.out.println("Page Requested : All Volonteers");
		ModelAndView mv = new ModelAndView();
		List<Volonteer> volonteerList = volonteerService.getAllVolonteers();
		mv.addObject("volonteerList", volonteerList);
		mv.setViewName("allVolonteers");
		return mv;
	}

	@RequestMapping(value = "/addVolonteer/{id}", method = RequestMethod.GET)
	public ModelAndView displayNewVolonteerForm() {
		ModelAndView mv = new ModelAndView("addVolonteer");
		List<Event> eventList = eventService.getAllEvents();
		mv.addObject("headerMessage", "Add User Details");
		mv.addObject("user", new User());
		mv.addObject("volonteer", new Volonteer());
		mv.addObject("eventList", eventList);
		mv.addObject("association", new Association());
		return mv;
	}

	@RequestMapping(value = "/addVolonteer/{id}", method = RequestMethod.POST)
	public ModelAndView saveNewVolonteer(@PathVariable Long id, @ModelAttribute User user, @ModelAttribute Event event,
			@ModelAttribute Volonteer volonteer,@ModelAttribute Association association, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home_volonteer");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		association = associationService.getAssociationById(id);
		user.setAssociation(association);
		//boolean isUserAdded = userService.saveUser(user);
		volonteer.setUser(user);
		//boolean isVolonteerAdded = volonteerService.saveVolonteer(volonteer);
		event.setVolonteer(volonteer);
		boolean isEventAdded = eventService.saveEvent(event);


		if (isEventAdded) {
			mv.addObject("message", "New volonteer successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/editVolonteer/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditVolonteerForm(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("/editVolonteer");
		Volonteer volonteer = volonteerService.getVolonteerById(id);
		mv.addObject("headerMessage", "Edit volonteer Details");
		mv.addObject("volonteer", volonteer);
		return mv;
	}

	@RequestMapping(value = "/editVolonteer/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedVolonteer(@ModelAttribute Volonteer volonteer, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home_volonteer");
	

		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}
		boolean isSaved = volonteerService.saveVolonteer(volonteer);
		if (!isSaved) {

			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/deleteVolonteer/{id}", method = RequestMethod.GET)
	public ModelAndView deleteVolonteerById(@PathVariable int id) {
		boolean isDeleted = volonteerService.deleteVolonteerById(id);
		System.out.println("Deletion respone: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/home_volonteer");
		return mv;

	}
	

}