package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.PartnerEntity;
import fr.isika.projet3.repository.PartnerEntityRepository;


@Service
@Transactional
public class PartnerEntityService implements IPartnerEntityService {

	   @Autowired
		private PartnerEntityRepository repository;
		
		public PartnerEntityService() {
			
		}

		public PartnerEntityService(PartnerEntityRepository repository) {
			super();
			this.repository = repository;
		}
	
	
	
	@Override
	public List<PartnerEntity> getAllPartnersEntity() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PartnerEntity getPartnerEntityById(int id) {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		return false;
	}

}
