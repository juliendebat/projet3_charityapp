package fr.isika.projet3.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
@Table(name="users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	private String lastName;
	private String firstName;
	private String email;
	



	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}




	public int getUserId() {
		return Id;
	}


	public void setUserId(int userId) {
		Id = userId;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstNAme) {
		this.firstName = firstNAme;
	}


	

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}



	
	
	
	
	
}
