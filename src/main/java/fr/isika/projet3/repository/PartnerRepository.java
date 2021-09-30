package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import fr.isika.projet3.entities.Partner;

@Repository
public interface PartnerRepository extends CrudRepository<Partner, Long>{

}
