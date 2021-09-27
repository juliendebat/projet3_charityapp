package fr.isika.projet3.repository;

<<<<<<< HEAD
import fr.isika.projet3.entities.Association;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AssociationRepository extends JpaRepository<Association, Long> {
=======
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Association;

@Repository
public interface AssociationRepository extends CrudRepository<Association, Long>{
	
>>>>>>> 6a6af6cb4137a5f1c8898152a7a6911b66c3c8a8
}
