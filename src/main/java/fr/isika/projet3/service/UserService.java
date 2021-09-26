package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.UserRepository;

@Service
@Transactional
public class UserService implements IUserService{

	// Implementing Constructor based DI
      
	        @Autowired
	 		private UserRepository repository;
			
			public UserService() {
				
			}
			
			
			public UserService(UserRepository repository) {
				super();
				this.repository = repository;
			}
			
		
		public List<User> getAllUsers() {

			return (List<User>) repository.findAll();
		}

	

		public boolean saveUser(User user) {
			try {
				repository.save(user);
				return true;
			}catch(Exception ex) {
				return false;
			}
		}

		public boolean deleteUserById(int id) {
			try {
				repository.deleteById(id);
				return true;
			}catch(Exception ex) {
				return false;
			}
			
		}

		@Override
		public User getUserById(int id) {
			User user = repository.findById(id).get();
			return user;
		
		}

		

	
	
	
}
