package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Volonteer;


public interface VolonteerService {

	public List<Volonteer> getAllVolonteers();
	public Volonteer getVolonteerById(int id);
	public boolean saveVolonteer(Volonteer volonteer);
	public boolean saveVolonteerWithEvent(Volonteer volonteer, Event event);
	public boolean deleteVolonteerById(int id);

}
