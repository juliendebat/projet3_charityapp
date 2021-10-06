package fr.isika.projet3.repository;


import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Promoter;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, Long> {
	

	List<Event> findByPromoter(Promoter promoter);

}
