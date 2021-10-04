package fr.isika.projet3.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;

@Repository
public interface PartnerRepository extends CrudRepository<Partner, Long>{
	
Partner findByUser(User user);



}
