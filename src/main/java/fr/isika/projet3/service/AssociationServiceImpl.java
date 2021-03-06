package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fr.isika.projet3.entities.Association;
import fr.isika.projet3.repository.AssociationRepository;

@Service
public class AssociationServiceImpl implements AssociationService {
	// Implementing Constructor based DI private
	@Autowired																 
	AssociationRepository associationRepository;
																	 
	public AssociationServiceImpl() { } 
	
	//@Autowired
	public AssociationServiceImpl(AssociationRepository																	
			associationRepository) { super();																	 
			this.associationRepository =																	 
					associationRepository; }
	
	@Override 
	public List<Association> getAllAssociations() { 
		List<Association> list = new ArrayList<Association>();																	 
	associationRepository.findAll().forEach(e ->list.add(e)); 
	return list;
	 }
	
	@Override 
	public Association getAssociationById(Long id) {
																	 
		Association association = associationRepository.findById(id).get();
		return association;
	}

	@Override
	public boolean saveAssociation(Association association) {
		try {
			associationRepository.save(association);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteAssociationById(Long id) {
		try {
			associationRepository.deleteById(id);
			return true;
		} catch (Exception ex) {
			return false;
		}

	}
	@Override
	public Association getAssociationByEmail(String email) {
		Association association = associationRepository.findByEmail(email);
		return association;
	}


	@Override
	public boolean isAuthentificationOk(String email, String password) {
		Association asso = associationRepository.findByEmail(email);
		if (asso != null) 
			if (asso.getPassword().equals(password)) {
				return true;
			} else {return false;}	
	
		return false;

	}

	@Override
	public boolean isRnaNumberAlreadyUsed(int rnaNumber) {
		Association association=associationRepository.findByRnaNumber(rnaNumber);
		if(association==null) return true;
		else return false;
	}

	@Override
	public boolean isEmailNotAlreadyUsed(String email) {
		
		Association association = associationRepository.findByEmail(email);
		if(association==null) return true;
		else return false;
		
	}



	
}

