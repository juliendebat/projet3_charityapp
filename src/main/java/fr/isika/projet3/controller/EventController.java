package fr.isika.projet3.controller;


import fr.isika.projet3.entities.Event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import fr.isika.projet3.service.EventService;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class EventController {

	// Constructor based Dependency Injection
			private EventService eventService;

			public EventController() {

			}

			@Autowired
			public EventController(EventService eventService) {
				this.eventService = eventService;
			}


			@RequestMapping(value = "/home_event", method = RequestMethod.GET)
			public ModelAndView hello(HttpServletResponse response) throws IOException {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("home_event");
				return mv;
			}

			// Get All Associations
			@RequestMapping(value = "/allEvents", method = RequestMethod.POST)
			public ModelAndView displayAllEvent() {
				System.out.println("Event Page Requested : All Events");
				ModelAndView mv = new ModelAndView();
				List<Event> eventList = eventService.getAllEvents();
				mv.addObject("eventList", eventList);
				mv.setViewName("allEvents");
				return mv;
			}

			@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
			public ModelAndView displayNewEventForm() {
				ModelAndView mv = new ModelAndView("addEvent");
				mv.addObject("headerMessage", "Add Association Details");
				mv.addObject("event", new Event());
				return mv;
			}

			@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
			public ModelAndView saveNewEvent(@ModelAttribute Event event, BindingResult result) {
				ModelAndView mv = new ModelAndView("redirect:/home_event");

				if (result.hasErrors()) {
					return new ModelAndView("error");
				}
				boolean isAdded = eventService.saveEvent(event);
				if (isAdded) {
					mv.addObject("message", "New event successfully added");
				} else {
					return new ModelAndView("error");
				}

				return mv;
			}

			@RequestMapping(value = "/editEvent/{id}", method = RequestMethod.GET)
			public ModelAndView displayEditEventForm(@PathVariable Long id) {
				ModelAndView mv = new ModelAndView("/editEvent");
				Event event = eventService.getEventById(id);
				mv.addObject("headerMessage", "Edit Event Details");
				mv.addObject("event", event);
				return mv;
			}

			@RequestMapping(value = "/editEvent/{id}", method = RequestMethod.POST)
			public ModelAndView saveEditedEvent(@ModelAttribute Event event, BindingResult result) {
				ModelAndView mv = new ModelAndView("redirect:/home_event");

				if (result.hasErrors()) {
					System.out.println(result.toString());
					return new ModelAndView("error");
				}
				boolean isSaved = eventService.saveEvent(event);
				if (!isSaved) {

					return new ModelAndView("error");
				}

				return mv;
			}

			@RequestMapping(value = "/deleteEvent/{id}", method = RequestMethod.GET)
			public ModelAndView deleteEventById(@PathVariable Long id) {
				boolean isDeleted = eventService.deleteEventById(id);
				System.out.println("Event deletion response: " + isDeleted);
				ModelAndView mv = new ModelAndView("redirect:/home_event");
				return mv;

			}

}
