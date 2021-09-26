package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.repository.PartnerRepository;
import fr.isika.projet3.repository.UserRepository;

@Service
@Transactional
public class PartnerService implements IPartnerService{

	
	   @Autowired
		private PartnerRepository repository;
		
		public PartnerService() {
			
		}
		
		
		public PartnerService(PartnerRepository repository) {
			super();
			this.repository = repository;
		}
		
	
	@Override
	public List<Partner> getAllPartners() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Partner getPartnerById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean savePartner(Partner partner) {
		try {
			
			
			repository.save(partner);
			return true;
		}catch(Exception ex) {
			return false;
		}
	
	}

	@Override
	public boolean deletePartnerById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
