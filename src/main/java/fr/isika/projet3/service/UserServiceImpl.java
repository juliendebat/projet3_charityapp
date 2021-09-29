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
public class UserServiceImpl implements UserService {

	// Implementing Constructor based DI
			private UserRepository repository;
			
			public UserServiceImpl() {
				
			}
			
			@Autowired
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
		public User getUserById(int id) {
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
		public boolean deleteUserById(int id) {
			try {
				repository.deleteById(id);
				return true;
			}catch(Exception ex) {
				return false;
			}
			
		}


}
