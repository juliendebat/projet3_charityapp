package fr.isika.projet3.service;

import java.util.List;

import javax.transaction.Transactional;

import fr.isika.projet3.repository.PartnerRepository;
import fr.isika.projet3.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;

@Service
public class PartnerServiceImpl implements PartnerService{

	
	   @Autowired
		private PartnerRepository partnerRepository;
		
       @Autowired
	   private UserRepository userRepository;
	   	   
		public PartnerServiceImpl() {			
		}
		
			
		public PartnerServiceImpl(PartnerRepository repository) {
			super();
			this.partnerRepository = repository;
		}
		
	
	@Override
	public List<Partner> getAllPartners() {
		return (List<Partner>) partnerRepository.findAll();
	}

	@Override
	public Partner getPartnerById(Long id) {
		Partner partner = partnerRepository.findById(id).get();
		return partner;
	}

	@Override
	public boolean savePartner(Partner partner) {
		try {
			partnerRepository.save(partner);
			return true;
		}catch(Exception ex) {
			return false;
		}	
	}

	@Override
	public boolean deletePartnerById(Long id) {
		try {
			partnerRepository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

	@Override
	public Partner getPartnerByUser(User user) {		
		Partner partner=partnerRepository.findByUser(user);
		return partner;		
	}
}

