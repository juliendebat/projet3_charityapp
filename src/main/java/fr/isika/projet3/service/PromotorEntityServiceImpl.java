package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.PromotorEntity;
import fr.isika.projet3.repository.PromotorEntityRepository;



@Service
@Transactional
public class PromotorEntityServiceImpl implements PromotorEntityService {

	   @Autowired
		private PromotorEntityRepository repository;
		
		public PromotorEntityServiceImpl() {
			
		}

		public PromotorEntityServiceImpl(PromotorEntityRepository repository) {
			super();
			this.repository = repository;
		}
	
	
	
	@Override
	public List<PromotorEntity> getAllPromotorsEntity() {
		return (List<PromotorEntity>) repository.findAll();
	}

	@Override
	public PromotorEntity getPromotorEntityById(int id) {
		PromotorEntity promotorentity = repository.findById(id).get();
		return promotorentity;
	}

	@Override
	public boolean savePromotorEntity(PromotorEntity promotorentity) {
		try {

			repository.save(promotorentity);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deletePromotorEntityById(int id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

}
