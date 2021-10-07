package fr.isika.projet3.service;
import java.util.List;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;


public interface PromoterService {

	public List<Promoter> getAllPromoters();
	public Promoter getPromoterById(Long id);
	public boolean savePromoter(Promoter promoter);
	public boolean deletePromoterById(Long id);
	public Promoter getPromotertByUser(User user);
	int countPromoterByAssociation(Association association);
	public List<Promoter> getAllPromotersByUsers(List<User> users);
	//Add seb 
	//public Promoter getPromoterByEvents(List<Event> events);

}