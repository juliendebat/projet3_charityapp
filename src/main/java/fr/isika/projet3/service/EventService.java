package fr.isika.projet3.service;


import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;

import java.util.List;

public interface EventService {


	public List getAllEvents();
	public Event getEventById(Long id);
	public boolean saveEvent(Event event);
	public boolean deleteEventById(Long id);
	
	public List<Event> getAllEventsByPromoters(List<Promoter> promoters);

}