package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Promotor;
import fr.isika.projet3.entities.User;


public interface PromotorService {

	public List<Promotor> getAllPromotors();
	public Promotor getPromotorById(int id);
	public boolean savePromotor(Promotor user);
	public boolean deletePromotorById(int id);
}
