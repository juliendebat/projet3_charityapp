package fr.isika.projet3.service;

import java.util.List;


import fr.isika.projet3.entities.PartnerEntity;

public interface PartnerEntityService {
	public List<PartnerEntity> getAllPartnersEntity();
	public PartnerEntity getPartnerEntityById(int id);
	public boolean savePartnerEntity(PartnerEntity user);
	public boolean deletePartnerEntityById(int id);
}
