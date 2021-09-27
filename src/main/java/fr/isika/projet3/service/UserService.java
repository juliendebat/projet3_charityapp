package fr.isika.projet3.service;

import java.util.List;
<<<<<<< HEAD
import fr.isika.projet3.entities.User;

public interface UserService  {

	public List getAllUsers();
	public User getUserById(Long id);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);

}
=======

import fr.isika.projet3.entities.User;

public interface UserService {

	
	public List<User> getAllUsers();
	public User getUserById(int id);
	public boolean saveUser(User user);
	public boolean deleteUserById(int id);
	
}
>>>>>>> 162763fb97ad68d388a0676696fafeb9cf1ac3d7
