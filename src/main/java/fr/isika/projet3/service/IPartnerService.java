package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;

public interface IPartnerService {

	public List<Partner> getAllPartners();
	public Partner getPartnerById(int id);
	public boolean savePartner(Partner user);
	public boolean deletePartnerById(int id);
}
