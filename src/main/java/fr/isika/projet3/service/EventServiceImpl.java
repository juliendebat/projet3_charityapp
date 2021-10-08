package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.EventRepository;
import fr.isika.projet3.repository.PromoterRepository;
import fr.isika.projet3.repository.UserRepository;

@Service
public class EventServiceImpl implements EventService {

	// Implementing Constructor based DI
	private EventRepository eventRepository;
	private PromoterRepository promoterRepository;
	private UserRepository userRepository;
	private PromoterService promoterService;

	public EventServiceImpl() {
	}

	@Autowired
	public EventServiceImpl(EventRepository eventRepository, PromoterRepository promoterRepository,
			UserRepository userRepository, PromoterService promoterService) {
		super();
		this.eventRepository = eventRepository;
		this.promoterRepository = promoterRepository;
		this.userRepository = userRepository;
		this.promoterService = promoterService;
	}

	@Override
	public List getAllEvents() {
		List list = new ArrayList();
		eventRepository.findAll().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public Event getEventById(Long id) {
		Event event = eventRepository.findById(id).get();
		return event;
	}

	@Override
	public boolean saveEvent(Event event) {
		try {
			eventRepository.save(event);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteEventById(Long id) {
		try {
			eventRepository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public List<Event> getEventsByPromoter(Promoter promoterinProgress) {
		List<Event> listeEvent = eventRepository.findByPromoter(promoterinProgress);
		return listeEvent;
	}

	@Override
	public int countEventsByAssociation(Association association) {
		List<User> users = userRepository.findByAssociation(association);
		List<Promoter> promoters = promoterService.getAllPromotersByUsers(users);
		List<Event> events = getAllEventsByPromoters(promoters);
		return events.size();
	}

	@Override
	public List<Event> getAllEventsByAssociation(Association association) {
		List<User> users = userRepository.findByAssociation(association);
		List<Promoter> promoters = promoterService.getAllPromotersByUsers(users);
		List<Event> events = getAllEventsByPromoters(promoters);
		return events;
	}

	@Override
	public List<Event> getAllEventsByPromoters(List<Promoter> promoters) {

		List<Event> events = new ArrayList<>();

		for (Promoter promoter : promoters) {
			List<Event> listeEvent = eventRepository.findByPromoter(promoter);
			if (listeEvent != null) {
				events.addAll(listeEvent);
			}

		}
		return events;
	}

}
