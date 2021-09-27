package fr.isika.projet3.service;
import java.util.List;

import fr.isika.projet3.entities.Association;




public interface IAssociationService {

    public List<Association> finfAll();
    public Association getAssociationById(Long id);
    public boolean saveAssociation(Association association);
    public boolean deleteAssociationById(Long id);
}
