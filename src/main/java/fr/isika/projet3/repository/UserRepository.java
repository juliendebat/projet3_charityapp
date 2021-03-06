package fr.isika.projet3.repository;



import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
    
	//julien
	List<User> findByAssociation(Association association);
	List<User> findByAssociationAndHasDonated(Association association, Boolean bool);
    User findByEmailAndAssociation(String email, Association association);    
    User findByEmail(String email);
}
