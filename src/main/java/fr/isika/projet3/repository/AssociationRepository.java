package fr.isika.projet3.repository;

import fr.isika.projet3.entities.Association;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface AssociationRepository extends CrudRepository<Association, Long> {

	
	// @Query("select u from association u where u.email = :email")
	 Association findByEmail(String email);


	
}
