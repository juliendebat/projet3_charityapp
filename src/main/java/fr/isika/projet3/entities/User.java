package fr.isika.projet3.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="users")
public class User {
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String lastName;
	private String firstName;
	private String email;
	private int age;
	private String address;
	private int zipCode;
	private String town;
	private int mobilePhone;
	private String complementaryAddress;
	private boolean hasDonated;

	@OneToMany(mappedBy ="user")
	List<Donation> donations;

	@OneToOne(mappedBy = "user")
	Partner partner;
	
	@OneToOne(mappedBy = "user")
	Promoter promoter;
	
	@OneToOne(mappedBy = "user")
	Volonteer volonteer;
	

	public Promoter getPromoter() {
		return promoter;
	}

	public void setPromoter(Promoter promoter) {
		this.promoter = promoter;
	}

	@ManyToOne
	private Association association;


	public void addDonation(Donation donation) {
		this.donations.add(donation);
	}

	public User() {
		donations=new ArrayList<Donation>();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	public boolean isHasDonated() {
		return hasDonated;
	}

	public void setHasDonated(boolean hasDonated) {
		this.hasDonated = hasDonated;
	}

	public List<Donation> getDonations() {
		return donations;
	}

	public void setDonations(List<Donation> donations) {
		this.donations = donations;
	}

	public Partner getPartner() {
		return partner;
	}

	public void setPartner(Partner partner) {
		this.partner = partner;
	}

	public Association getAssociation() {
		return association;
	}

	public void setAssociation(Association association) {
		this.association = association;
	}

}
