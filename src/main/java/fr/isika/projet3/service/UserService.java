package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Association;
import fr.isika.projet3.entities.Event;
import fr.isika.projet3.entities.Partner;
import fr.isika.projet3.entities.Promoter;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.entities.Volonteer;

public interface UserService  {

	public List<User> getAllUsers();
<<<<<<< HEAD
	public User getUserById(Long id2);
	

=======
	public User getUserById(Long id);
	
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);
	
	//julien --> Partners
	public List<User> getAllUserByAssociation(Association association);
	
	
	public List<Promoter> getAllPromoterByAssociation(Association association);
	
	public List<Volonteer> getAllVolonteerByAssociation(Association association);
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
