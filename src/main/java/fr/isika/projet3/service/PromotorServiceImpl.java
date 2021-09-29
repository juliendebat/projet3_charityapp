package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Promotor;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.PromotorRepository;
import fr.isika.projet3.repository.UserRepository;

@Service
@Transactional
public class PromotorServiceImpl implements PromotorService{

	
	   @Autowired
		private PromotorRepository repository;
		
	   
		public PromotorServiceImpl() {
			
		}
		
			
		public PromotorServiceImpl(PromotorRepository repository) {
			super();
			this.repository = repository;
		}
		
	
	@Override
	public List<Promotor> getAllPromotors() {
		return (List<Promotor>) repository.findAll();
	}

	@Override
	public Promotor getPromotorById(int id) {
		Promotor promotor = repository.findById(id).get();
		return promotor;
	}

	@Override
	public boolean savePromotor(Promotor promotor) {
		try {
			
			
			repository.save(promotor);
			return true;
		}catch(Exception ex) {
			return false;
		}
	
	}

	@Override
	public boolean deletePromotorById(int id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

}
