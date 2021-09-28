package fr.isika.projet3.repository;



import org.springframework.data.repository.CrudRepository;

import fr.isika.projet3.entities.Donation;


public interface DonationRepository  extends CrudRepository<Donation, Integer>{

	
}
