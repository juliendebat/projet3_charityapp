package fr.isika.projet3.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;

@Repository
public interface PromoterRepository extends CrudRepository<Promoter, Long> {

	Promoter findByUser(User user);
	//List<Promoter> findByUser(List<User> users);

}
