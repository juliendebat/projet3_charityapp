package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.UserRepository;



@Service

public class UserServiceImpl implements UserService {

	// Implementing Constructor based DI
	         @Autowired
			private UserRepository repository;
			
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

		@Override
		public List<User> getAllPartnersByAssociation(Association association) {
			List<User> users = repository.findByAssociation(association);
			for (User user : users) {				
				if(user.getPartner() == null) {
					users.remove(user);
				}
			}			
			return users;
		}
		
        //julien
		@Override
		public List<User> getAllContributorsByAssociation(Association association) {
			List<User> listeUserHasDonated=repository.findByAssociationAndHasDonated(association, true);
			return listeUserHasDonated;			
		}
		
        //julien
		@Override
		public boolean CheckContributorIdentity(String email) {
			
			User user=repository.findByEmail(email);
			
			if(user == null ) return true;
			else return false;
			
			
		}
		
		
		
		
}
