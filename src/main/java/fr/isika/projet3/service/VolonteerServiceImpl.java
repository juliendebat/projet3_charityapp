package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.repository.VolonteerRepository;

@Service
@Transactional
public class VolonteerServiceImpl implements VolonteerService {

	// Implementing Constructor based DI
	private VolonteerRepository repository;
	   @Autowired
	   private UserRepository userRepository;

	public VolonteerServiceImpl() {

	}

	@Autowired
	public VolonteerServiceImpl(VolonteerRepository repository) {
		super();
		this.repository = repository;
	}

	public List<Volonteer> getAllVolonteers() {
		List<Volonteer> list = new ArrayList<>();
		repository.findAll().forEach(e -> list.add(e));
		return list;
		
		
	}

	public Volonteer getVolonteerById(Long id) {
		Volonteer volonteer = repository.findById(id).get();
		return volonteer;
	}

	public boolean saveVolonteer(Volonteer volonteer) {
		try {
			repository.save(volonteer);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	public boolean deleteVolonteerById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}

	}
	
	
public List<Volonteer> getAllVoluntersByUsers(List<User> users){
		
		List<Volonteer> volonteers=new ArrayList<>();
		
		for (User user : users) {
			Volonteer volunter=repository.findByUser(user);
			if(volunter!=null) {
				volonteers.add(volunter);
			}
			
		}
		return volonteers;
	}
	
	
	
	@Override
	public int countVoluntersByAssociation(Association association) {
		
		List<User> users= userRepository.findByAssociation(association);
		List<Volonteer> volunters=getAllVoluntersByUsers(users);
		return volunters.size();
	}
	
	@Override
	public List<Volonteer> getAllVoluntersByAssociation(Association association) {
		
		List<User> users= userRepository.findByAssociation(association);
		List<Volonteer> volunters=getAllVoluntersByUsers(users);
		return volunters;
	}
	

}