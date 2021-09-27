package fr.isika.projet3.service;

<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.repository.AssociationRepository;



@Service
public class AssociationService  implements IAssociationService{

    private AssociationRepository associationRepository;

    public AssociationService(AssociationRepository associationRepository) {
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
	public List<Association> finfAll() {
		return associationRepository.findAll();
	}


}
=======
import java.util.List;

import fr.isika.projet3.entities.Association;

public interface AssociationService {

	public List getAllAssociations();
	public Association getAssociationById(Long id);
	public boolean saveAssociation(Association association);
	public boolean deleteAssociationById(Long id);
}
>>>>>>> 6a6af6cb4137a5f1c8898152a7a6911b66c3c8a8
