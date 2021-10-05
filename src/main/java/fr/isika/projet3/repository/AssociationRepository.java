package fr.isika.projet3.repository;


import fr.isika.projet3.entities.Association;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;



@Repository

public interface AssociationRepository extends CrudRepository<Association, Long> {
	Association findByEmail(String email);
	Association findByRnaNumber(int rnaNumber);
	Association findByEmailAndPassword(String email, String password);

}

