package fr.isika.projet3.service;
import java.util.List;

import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;


public interface PromoterService {

	public List<Promoter> getAllPromoters();
	public Promoter getPromoterById(int id);
	public boolean savePromoter(Promoter promoter);
	public boolean deletePromoterById(int id);
	public List<Promoter> getAllPromotersByUsers(List<User> users);
}