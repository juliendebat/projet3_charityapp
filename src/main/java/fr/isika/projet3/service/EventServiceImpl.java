package fr.isika.projet3.service;

import fr.isika.projet3.entities.Event;
import fr.isika.projet3.repository.EventRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EventServiceImpl implements EventService{
	
    @Autowired
    private EventRepository eventRepository;

    public EventServiceImpl() {
    }

    public EventServiceImpl(EventRepository eventRepository) {
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
