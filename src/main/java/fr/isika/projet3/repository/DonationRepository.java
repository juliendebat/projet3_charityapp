package fr.isika.projet3.repository;


import org.springframework.data.repository.CrudRepository;

import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.User;



public interface DonationRepository  extends CrudRepository<Donation, Long> {

	//julien
	Donation findByUser(User user);
}

