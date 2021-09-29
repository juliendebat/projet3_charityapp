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
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.service.EventService;
import fr.isika.projet3.service.UserService;
import fr.isika.projet3.service.VolonteerService;

@Controller
public class VolonteerController {
	// Constructor based Dependency Injection
	@Autowired
	private VolonteerService volonteerService;
	@Autowired
	private EventService eventService;
	@Autowired
	private UserService userService;

	public VolonteerController() {

	}

	@Autowired
	public VolonteerController(VolonteerService volonteerService) {
		this.volonteerService = volonteerService;
	}
	
	


	@RequestMapping(value = {"/home_volonteer"}, method = RequestMethod.GET)
	public ModelAndView index(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home_volonteer");
		return mv;
	}

	// Get All Users
	@RequestMapping(value = "/allVolonteers", method = RequestMethod.POST)
	public ModelAndView displayAllVolonteers() {
		System.out.println("Page Requested : All Volonteers");
		ModelAndView mv = new ModelAndView();
		List<Volonteer> volonteerList = volonteerService.getAllVolonteers();
		//List<User> userList = userService.getAllUsers();
		mv.addObject("volonteerList", volonteerList);
		//mv.addObject("userList", userList);
		mv.setViewName("allVolonteers");
		return mv;
	}

	@RequestMapping(value = "/addVolonteer", method = RequestMethod.GET)
	public ModelAndView displayNewVolonteerForm() {
		ModelAndView mv = new ModelAndView("addVolonteer");
		mv.addObject("headerMessage", "Add User Details");
		mv.addObject("volonteer", new Volonteer());
		mv.addObject("user", new User());
		return mv;
	}

	@RequestMapping(value = "/addVolonteer", method = RequestMethod.POST)
	public ModelAndView saveNewVolonteer(@ModelAttribute("Volonteer") Volonteer volonteer, 
			@ModelAttribute("User") User user, BindingResult result) {
		//ModelAndView mv = new ModelAndView("redirect:/allEvents/{id}");
		ModelAndView mv = new ModelAndView("redirect:/home_volonteer");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isUserAdded = userService.saveUser(user);
		boolean isAdded = volonteerService.saveVolonteer(volonteer);
		if (isAdded && isUserAdded) {
			mv.addObject("message", "New volonteer successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}

	@RequestMapping(value = "/editVolonteer/{id}", method = RequestMethod.GET)
	public ModelAndView displayEditVoloteerForm(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("/editVolonteer");
		Volonteer volonteer = volonteerService.getVolonteerById(id);
		User user = volonteer.getUser();
		List<Event> events = eventService.getAllEvents();
		//Event event = volonteer.getEvent();
		mv.addObject("headerMessage", "Edit Volonteer Details");
		mv.addObject("user", user);
		mv.addObject("events", events);
		mv.addObject("volonteer", volonteer);
		return mv;
	}

	
	@RequestMapping(value = "/editVolonteer/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditedVolonteer(@ModelAttribute Volonteer volonteer, 
			@ModelAttribute User user, @ModelAttribute Event event, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home_volonteer");
		
		
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}
		volonteer.setUser(user);
		volonteer.setEvent(event);
		boolean isSaved = volonteerService.saveVolonteer(volonteer);
		

		if (isSaved) {
			mv.addObject("message", "New partner successfully added");
		} else {
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
