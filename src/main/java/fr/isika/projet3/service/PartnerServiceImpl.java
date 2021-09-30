package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import fr.isika.projet3.repository.PartnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Partner;


@Service
@Transactional
public class PartnerServiceImpl implements PartnerService{

	
	   @Autowired
		private PartnerRepository repository;
		
	   
		public PartnerServiceImpl() {
			
		}
		
			
		public PartnerServiceImpl(PartnerRepository repository) {
			super();
			this.repository = repository;
		}
		
	
	@Override
	public List<Partner> getAllPartners() {
		return (List<Partner>) repository.findAll();
	}

	@Override
	public Partner getPartnerById(Long id) {
		Partner partner = repository.findById(id).get();
		return partner;
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
	public boolean deletePartnerById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}


}

