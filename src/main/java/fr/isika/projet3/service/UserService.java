package fr.isika.projet3.service;

import java.util.List;
import fr.isika.projet3.entities.User;

public interface UserService  {

	public List getAllUsers();
	public User getUserById(Long id);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);

}