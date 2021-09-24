package fr.isika.projet3.service;

import fr.isika.projet3.entities.Event;
import fr.isika.projet3.repository.EventRepository;

import java.util.List;

public class EventService implements IEventService{
    private EventRepository eventRepository;

    public EventService() {
    }

    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    @Override
    public List<Event> finfAll() {
        return eventRepository.findAll();
    }

    public Event getEventById(Long id) {
        Event event = eventRepository.findById(id).get();
        return event;
    }


    public boolean saveEvent(Event event) {
        try {
            eventRepository.save(event);
            return true;
        }catch(Exception ex) {
            return false;
        }
    }


    public boolean deleteEventById(Long id) {
        try {
            eventRepository.deleteById(id);
            return true;
        }catch(Exception ex) {
            return false;
        }
    }


}
