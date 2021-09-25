package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.User;

public interface IUserService {

	
	public List<User> getAllUsers();
	public User getUserById(int id);
	public boolean saveUser(User user);
	public boolean deleteUserById(int id);
	
}
