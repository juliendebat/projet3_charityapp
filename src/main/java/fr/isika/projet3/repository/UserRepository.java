package fr.isika.projet3.repository;

<<<<<<< HEAD
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
=======

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
>>>>>>> 162763fb97ad68d388a0676696fafeb9cf1ac3d7
	
}
