package fr.isika.projet3.repository;


import fr.isika.projet3.entities.Association;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;



@Repository

public interface AssociationRepository extends CrudRepository<Association, Long> {
	Association findByEmail(String email);
}

