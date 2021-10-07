package fr.isika.projet3.service;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.PromoterRepository;
import fr.isika.projet3.repository.UserRepository;



@Service
public class PromoterServiceImpl implements PromoterService{

	// Implementing Constructor based DI
		private PromoterRepository repository;
		private UserRepository userrepository;
	   
		public PromoterServiceImpl() {
			
		}
		
		@Autowired	
		public PromoterServiceImpl(PromoterRepository repository,UserRepository userrepository ) {
			super();
			this.repository = repository;
			this.userrepository = userrepository;
		}
		
	
	@Override
	public List<Promoter> getAllPromoters() {
		List list = new ArrayList();
		repository.findAll().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public Promoter getPromoterById(Long id) {
		Promoter promoter = repository.findById(id).get();
		return promoter;
	}

	@Override
	public boolean savePromoter(Promoter promoter) {
		try {
			repository.save(promoter);
			return true;
		}catch(Exception ex) {
			return false;
		}
	
	}

	@Override
	public boolean deletePromoterById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}
	@Override
	public Promoter getPromotertByUser(User user) {
		Promoter promoter = repository.findByUser(user);
		return promoter;
	}
	
	@Override
	public List<Promoter> getAllPromotersByUsers(List<User> users){
		
		List<Promoter> promoters=new ArrayList<>();
		
		for (User user : users) {
			Promoter promoter=repository.findByUser(user);
			if(promoter!=null) {
				promoters.add(promoter);
			}			
		}
		return promoters;
	}
	
	
	
	@Override
	public int countPromoterByAssociation(Association association) {
		
		List<User> users= userrepository.findByAssociation(association);
		List<Promoter> promoters=getAllPromotersByUsers(users);
		return promoters.size();
	}

	//Add seb
//	@Override
//	public Promoter getPromoterByEvents(List<Event> events) {
//		
//			Promoter promoter = new Promoter();
//			for(Event event : events) {
//			promoter = repository.findByEvent(event);
//			}
//			return promoter;
//		
//	}
	
	
	

}