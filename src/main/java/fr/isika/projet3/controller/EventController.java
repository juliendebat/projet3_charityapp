package fr.isika.projet3.controller;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
    private EventService eventService;

    public EventController() {
    }

    public EventController(EventService eventService) {
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
}
