package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;

public interface PartnerEntityRepository extends CrudRepository<PartnerEntity, Integer> {

	PartnerEntity findByPartner(Partner partner);


}
