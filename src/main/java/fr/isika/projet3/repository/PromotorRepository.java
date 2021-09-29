package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Promotor;

@Repository
public interface PromotorRepository extends CrudRepository<Promotor, Integer>{

}
