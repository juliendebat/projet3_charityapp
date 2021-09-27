package fr.isika.projet3.service;
<<<<<<< HEAD



import java.util.List;

import fr.isika.projet3.entities.Association;

public interface AssociationService {

	public List getAllAssociations();
	public Association getAssociationById(Long id);
	public boolean saveAssociation(Association association);
	public boolean deleteAssociationById(Long id);
}

=======
import java.util.List;

import fr.isika.projet3.entities.Association;




public interface AssociationService {

    public List<Association> finfAll();
    public Association getAssociationById(Long id);
    public boolean saveAssociation(Association association);
    public boolean deleteAssociationById(Long id);
}
>>>>>>> 162763fb97ad68d388a0676696fafeb9cf1ac3d7
