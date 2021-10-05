package fr.isika.projet3.service;
import java.util.List;

import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;


public interface PromoterService {

	public List<Promoter> getAllPromoters();
	public Promoter getPromoterById(Long id);
	public boolean savePromoter(Promoter promoter);
	public boolean deletePromoterById(Long id);
<<<<<<< HEAD
=======
	Promoter getPromotertByUser(User user);
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b
}