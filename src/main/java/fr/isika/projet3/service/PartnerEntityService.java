package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.PartnerEntity;

public interface PartnerEntityService {
	public List<PartnerEntity> getAllPartnersEntity();
	public PartnerEntity getPartnerEntityById(Long id);
	public boolean savePartnerEntity(PartnerEntity user);
	public boolean deletePartnerEntityById(Long id);
	
	public PartnerEntity getPartnerEntityByPartner(Partner partner);
	

}
