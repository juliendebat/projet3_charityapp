package fr.isika.projet3.controller;


import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.service.EventServiceImpl;
import fr.isika.projet3.service.VolonteerServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
	
    @Autowired
    private EventServiceImpl eventService;
    
//    @Autowired
//    private VolonteerServiceImpl volonteerService;

    public EventController() {
    }

    public EventController(EventServiceImpl eventService) {
        this.eventService = eventService;
    }

    @RequestMapping(value = "/addEvent", method = RequestMethod.GET)
    public ModelAndView displayNewEventForm() {
        ModelAndView mv = new ModelAndView("addEvent");
        mv.addObject("event", new Event());
        return mv;
    }

    @RequestMapping(value = "/addEvent", method = RequestMethod.POST)
    public ModelAndView saveNewEvent(@ModelAttribute Event event, BindingResult result) {
        ModelAndView mv = new ModelAndView("redirect:/home");

        if (result.hasErrors()) {
            return new ModelAndView("error");
        }
        boolean isAdded = eventService.saveEvent(event);
        if (isAdded) {
            mv.addObject("message", "New Association successfully added");
        } else {
            return new ModelAndView("error");
        }

        return mv;
    }
  
//    @RequestMapping(value = "/allEvents/{id}", method = RequestMethod.GET)
//    public ModelAndView displayEventsForm(@PathVariable int id) {
//        ModelAndView mv = new ModelAndView("allEvents");
//        Volonteer volonteer = volonteerService.getVolonteerById(id);
//        mv.addObject("volonteer", volonteer);
//        return mv;
//    }
    
    @RequestMapping(value = "/allEvents", method = RequestMethod.POST)
	public ModelAndView displayAllEvents() {
		System.out.println("Association Page Requested : All Associations");
		ModelAndView mv = new ModelAndView();
		List<Event> eventList = eventService.getAllEvents();
		mv.addObject("eventList", eventList);
		mv.setViewName("allEvents");
		return mv;
	}
    
   
}
