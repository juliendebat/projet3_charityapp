package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;

@Repository
public interface PromoterRepository extends CrudRepository<Promoter, Long> {
<<<<<<< HEAD

=======
	
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b
	Promoter findByUser(User user);

}
