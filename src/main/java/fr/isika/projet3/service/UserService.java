package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.User;

public interface UserService  {

	public List<User> getAllUsers();
	public User getUserById(Long id);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);
	
	//julien --> Partners
	public List<User> getAllUserByAssociation(Association association);
	public List<User> getAllPartnersByAssociation(Association association);
	
	//julien  --> Donations par association
	public List<User> getAllContributorsByAssociation(Association association);
	public boolean CheckContributorIdentity(String email);
}
