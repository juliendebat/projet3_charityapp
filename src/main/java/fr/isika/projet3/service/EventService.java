package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;

public interface EventService {

	public List getAllEvents();
	public Event getEventById(Long id);
	public boolean saveEvent(Event event);
	public boolean deleteEventById(Long id);
	public List<Event> getEventsByPromoter(Promoter promoterinProgress);
	public int countEventsByAssociation(Association association);
	public List<Event> getAllEventsByAssociation(Association association);
	

}
