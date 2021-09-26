package fr.isika.projet3.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
@Table(name="users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String lastName;
	private String firstName;
	private int age;
	private String address;
	private int zip;
	private String town;
	private int mobilePhone;
	private String complementaryAddress;
	private int roleId;
	private boolean hasDonated;
	
	@ManyToOne 
	private Association association;
	
	

	
	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getZip() {
		return zip;
	}


	public void setZip(int zip) {
		this.zip = zip;
	}


	public String getTown() {
		return town;
	}


	public void setTown(String town) {
		this.town = town;
	}


	public int getMobilePhone() {
		return mobilePhone;
	}


	public void setMobilePhone(int mobilePhone) {
		this.mobilePhone = mobilePhone;
	}


	public String getComplementaryAddress() {
		return complementaryAddress;
	}


	public void setComplementaryAddress(String complementaryAddress) {
		this.complementaryAddress = complementaryAddress;
	}


	public int getRoleId() {
		return roleId;
	}


	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}


	public boolean isHasDonated() {
		return hasDonated;
	}


	public void setHasDonated(boolean hasDonated) {
		this.hasDonated = hasDonated;
	}


	private String email;
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		id = id;
	}




	public int getUserId() {
		return id;
	}


	public void setUserId(int userId) {
		id = userId;
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


	public Association getAssociation() {
		return association;
	}


	public void setAssociation(Association association) {
		this.association = association;
	}





	
	
	
	
	
}
