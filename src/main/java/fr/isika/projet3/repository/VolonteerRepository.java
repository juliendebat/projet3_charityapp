package fr.isika.projet3.repository;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VolonteerRepository extends CrudRepository<Volonteer, Integer>{

	Volonteer findByUser(User user);

}
