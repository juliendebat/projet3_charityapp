package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	
}
