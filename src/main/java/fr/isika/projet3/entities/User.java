package fr.isika.projet3.entities;

import javax.persistence.*;


@Entity
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String lastName;
	private String firstName;
	private int age;
	private String userEmail;
	private String userAddress;
	private String complementaryUserAddress;
	private int zipCode;
	private String town;
	private String country;
	private int mobilePhone;
	private int roleId;
	private boolean hasDonated;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
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
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getComplementaryUserAddress() {
		return complementaryUserAddress;
	}
	public void setComplementaryUserAddress(String complementaryUserAddress) {
		this.complementaryUserAddress = complementaryUserAddress;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(int mobilePhone) {
		this.mobilePhone = mobilePhone;
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
	
	
	
	

   

}