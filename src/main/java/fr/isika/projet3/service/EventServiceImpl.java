package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Event;
import fr.isika.projet3.repository.EventRepository;

@Service
@Transactional
public class EventServiceImpl implements EventService {

	// Implementing Constructor based DI
				private EventRepository eventRepository;
				
				public EventServiceImpl() {
					
				}
				
				@Autowired
				public EventServiceImpl(EventRepository eventRepository) {
					super();
					this.eventRepository = eventRepository;
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
				}catch(Exception ex) {
					return false;
				}
			}

			@Override
			public boolean deleteEventById(Long id) {
				try {
					eventRepository.deleteById(id);
					return true;
				}catch(Exception ex) {
					return false;
				}
				
			}
}
