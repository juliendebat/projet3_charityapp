package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;

import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.repository.EventRepository;



import fr.isika.projet3.repository.PartnerRepository;
import fr.isika.projet3.repository.PromoterRepository;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.repository.VolonteerRepository;



@Service
public class UserServiceImpl implements UserService {

	// Implementing Constructor based DI
	         @Autowired
			private UserRepository repository;
	         
	         @Autowired
			private PartnerRepository partnerrepository;
	         @Autowired
			private VolonteerRepository volonteerRepository;
	         @Autowired
	        private PromoterRepository promoterRepository;
	         @Autowired
	        private EventRepository eventRepository;
	         @Autowired
			private PromoterRepository promoterrepository;
	     
	         @Autowired
	         private AssociationService associationService;
			

			public UserServiceImpl() {
				
			}
			
			//@Autowired
			public UserServiceImpl(UserRepository repository) {
				super();
				this.repository = repository;
			}
			
		@Override
		public List getAllUsers() {
			List list = new ArrayList();
			repository.findAll().forEach(e -> list.add(e));
			return list;
		}

		@Override
		public User getUserById(Long id) {
			User user = repository.findById(id).get();
			return user;
		}

		@Override
		public boolean saveUser(User user) {
			try {
				repository.save(user);
				return true;
			}catch(Exception ex) {
				return false;
			}
		}

		@Override
		public boolean deleteUserById(Long id) {
			try {
				repository.deleteById(id);
				return true;
			}catch(Exception ex) {
				return false;
			}
			
		}

		
		public List<User> getAllUserByAssociation(Association association) {			
			List<User> users = repository.findByAssociation(association);
			return users;			
		}

		@SuppressWarnings("null")
		@Override
		public List<Partner> getAllPartnersByAssociation(Association association) {
			List<User> users = repository.findByAssociation(association);
		List<Partner> partners = new ArrayList<>();
			for (User user : users) {							
			Partner partner = partnerrepository.findByUser(user);
			if(partner!=null) {
				partners.add(partner);
			}
			}			
			return partners;
		}		
        //julien
		@Override
		public List<User> getAllContributorsByAssociation(Association association) {
			List<User> listeUserHasDonated=repository.findByAssociationAndHasDonated(association, true);
			return listeUserHasDonated;			
		}
		
        //julien
		@Override
		public boolean CheckContributorIdentity(String email, Association association) {
			
			User user=repository.findByEmailAndAssociation(email,association);
			if(user == null ) return true;
			else return false;	
		}
		
		@Override	
	    public String getUserInformation(String email, Association association) {
	    	User user=repository.findByEmailAndAssociation(email, association);
	    	String globalInformation="";
	    	if(user!=null) {
	    		return globalInformation="Nous avons déjà des information correspondant à l'addresse mail : "+user.getEmail()+"Etes-vous "+user.getFirstName()+" "+user.getLastName()+", "+Integer.toString(user.getAge()) +" an, résidant à" +user.getTown()+", "+user.getMobilePhone()+" ?";
	    	}
			return null;	    	
	    }

		@Override
		public User getUserByEmailAndAssociation(String email, Association association) {		
			User user=repository.findByEmailAndAssociation(email, association);
			return user;			
		}
		@SuppressWarnings("null")
		@Override
		public List<Volonteer> getAllVolonteerByAssociation(Association association) {
			List<User> users = repository.findByAssociation(association);
			List<Volonteer> volonteers = new ArrayList<>();
				for (User user : users) {							
				Volonteer volonteer = volonteerRepository.findByUser(user);
				if(volonteer!=null) {
					volonteers.add(volonteer);
				}
				}			
				return volonteers;
		}

		@Override
		public List<Promoter> getAllPromoterByAssociation(Association association) {
			List<User> users = repository.findByAssociation(association);
			List<Promoter> promoters = new ArrayList<>();
				for (User user : users) {							
				Promoter promoter = promoterRepository.findByUser(user);
				if(promoter!=null) {
					promoters.add(promoter);
				}
				}			
				return promoters;
		}
	

		@Override
		public boolean isPromoterConnected(String email, String password, Long id) {
			 Association association=associationService.getAssociationById(id);
			 
			 User user = repository.findByEmailAndAssociation(email, association);
			 if(user!=null) {
				 
			Promoter promoter = promoterrepository.findByUser(user);
	
			if(promoter.getPassword().equals(password)) return true;
			
			else return false;
			 }
			 else return false;
			
	
			
		}

		@Override
		public User getUserByEmail(String email) {
			User user = repository.findByEmail(email);
			return user;
		}

		
		
		
}