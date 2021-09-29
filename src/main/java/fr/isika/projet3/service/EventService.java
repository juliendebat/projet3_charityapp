package fr.isika.projet3.service;


import fr.isika.projet3.entities.Event;

import java.util.List;

public interface EventService {

    public Event getEventById(int id);
    public boolean saveEvent(Event event);
    public boolean deleteEventById(Long id);
	public List getAllEvents();
}
