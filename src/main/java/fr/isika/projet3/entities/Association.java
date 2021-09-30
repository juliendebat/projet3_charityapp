package fr.isika.projet3.entities;
import sun.awt.image.ImageWatched;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="associations")
public class Association {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String associationName;
    private int rnaNumber;
    private String address;
    private int zipCode;
    private String city;
    private String country;
    private String email;
    private String password;
   	private String description;
	private int phone;
	private String theme;
	private String photo;

    @ManyToMany
    private List<User> lUser;
	@OneToMany
	private List<Event> lEvent;
	@OneToMany
	private List<Donation> lDonation;

	// A garder ou pas ???



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAssociationName() {
		return associationName;
	}

	public void setAssociationName(String associationName) {
		this.associationName = associationName;
	}

	public int getRnaNumber() {
		return rnaNumber;
	}

	public void setRnaNumber(int rnaNumber) {
		this.rnaNumber = rnaNumber;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public List<Donation> getlDonation() {
		return lDonation;
	}

	public void setlDonation(List<Donation> lDonation) {
		this.lDonation = lDonation;
	}

	public String getPassword() {
		return password;

	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<User> getlUser() {
		return lUser;
	}

	public void setlUser(List<User> lUser) {
		this.lUser = lUser;
	}


	public List<Event> getlEvent() {
		return lEvent;
	}

	public void setlEvent(List<Event> lEvent) {
		this.lEvent = lEvent;
	}


    
}
