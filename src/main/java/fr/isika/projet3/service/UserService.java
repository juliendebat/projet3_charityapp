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
	
	
	
	
	/////////////
	public List<Partner> getAllPartnersByAssociation(Association association);
	
	//julien  --> Donations par association
	public List<User> getAllContributorsByAssociation(Association association);
	
	//julien check Use information before donation
	public boolean CheckContributorIdentity(String email, Association association);
	public String getUserInformation(String email, Association association);
		
	public User getUserByEmailAndAssociation(String email, Association association);
	
	//julien check Promoter Login
	public boolean isPromoterConnected(String email, String pasword, Long id);
	public User getUserByEmail(String email);
	
	
	
}
