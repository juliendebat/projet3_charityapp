package fr.isika.projet3.repository;

import fr.isika.projet3.entities.Event;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, Long> {
}
