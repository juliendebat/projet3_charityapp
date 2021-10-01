package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.repository.PartnerEntityRepository;


@Service
public class PartnerEntityServiceImpl implements PartnerEntityService {

	   @Autowired
		private PartnerEntityRepository repository;
		
		public PartnerEntityServiceImpl() {
			
		}

		public PartnerEntityServiceImpl(PartnerEntityRepository repository) {
			super();
			this.repository = repository;
		}
	
	
	
	@Override
	public List<PartnerEntity> getAllPartnersEntity() {
		return (List<PartnerEntity>) repository.findAll();
	}

	@Override
	public PartnerEntity getPartnerEntityById(int id) {
		PartnerEntity partnerentity = repository.findById(id).get();
		return partnerentity;
	}

	@Override
	public boolean savePartnerEntity(PartnerEntity partnerentity) {
		try {

			repository.save(partnerentity);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deletePartnerEntityById(int id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

}