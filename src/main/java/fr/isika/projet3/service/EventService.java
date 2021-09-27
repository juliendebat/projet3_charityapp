package fr.isika.projet3.service;


import fr.isika.projet3.entities.Event;

import java.util.List;

public interface EventService {

    public List<Event> finfAll();
    public Event getEventById(Long id);
    public boolean saveEvent(Event event);
    public boolean deleteEventById(Long id);
}
