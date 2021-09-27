package fr.isika.projet3.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.repository.AssociationRepository;



@Service
public class AssociationServiceImpl  implements AssociationService{

	@Autowired
    private AssociationRepository associationRepository;

	
	
    public AssociationServiceImpl() {
	
	}



	public AssociationServiceImpl(AssociationRepository associationRepository) {
        this.associationRepository = associationRepository;
    }

   

    public Association getAssociationById(Long id) {
        Association association = associationRepository.findById(id).get();
        return association;
    }

   

    public boolean deleteAssociationById(Long id) {
        try {
        	associationRepository.deleteById(id);
            return true;
        }catch(Exception ex) {
            return false;
        }
    }

	public boolean saveAssociation(Association association) {
		try {
        	associationRepository.save(association);
            return true;
        }catch(Exception ex) {
            return false;
        }
	}

	@Override
	public List<Association> findAll() {
		return (List<Association>) associationRepository.findAll();
	}



	@Override
	public Association getAssociationByEmail(String email) {
		
		Association asso= associationRepository.findByEmail(email);

		return asso;
	}
	
	
	
	// Login Controller
	
	
	
	


}