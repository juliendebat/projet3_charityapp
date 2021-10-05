
package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Volonteer;


public interface VolonteerService {

	public List<Volonteer> getAllVolonteers();
	public Volonteer getVolonteerById(Long id);
	public boolean saveVolonteer(Volonteer volonteer);
	public boolean deleteVolonteerById(Long id);

}