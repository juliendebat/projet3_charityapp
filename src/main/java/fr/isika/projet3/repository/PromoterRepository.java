package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Promoter;

@Repository
public interface PromoterRepository extends CrudRepository<Promoter, Integer> {

}
