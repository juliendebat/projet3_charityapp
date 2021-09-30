package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Association;

public interface AssociationService {

	public List<Association> getAllAssociations();
//    public List<Association> findAll();
    public Association getAssociationById(Long id);
    public Association getAssociationByEmail(String email);
    public boolean saveAssociation(Association association);
    public boolean deleteAssociationById(Long id);
    
   
	public boolean isAuthentificationOk(String email, String password);
    
    
}

