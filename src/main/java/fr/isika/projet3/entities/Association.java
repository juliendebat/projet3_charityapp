package fr.isika.projet3.entities;

<<<<<<< HEAD
import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "associations")
public class Association {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String associassionName;
=======
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
>>>>>>> 6a6af6cb4137a5f1c8898152a7a6911b66c3c8a8
    private int rnaNumber;
    private String address;
    private int zipCode;
    private String city;
    private String country;
<<<<<<< HEAD

    @OneToMany
    private List<Event> lEvent;

    public List<Event> getlEvent() {
        return lEvent;
    }

    public void setlEvent(List<Event> lEvent) {
        this.lEvent = lEvent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAssociassionName() {
        return associassionName;
    }

    public void setAssociassionName(String associassionName) {
        this.associassionName = associassionName;
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

    public String getDescrption() {
        return descrption;
    }

    public void setDescrption(String descrption) {
        this.descrption = descrption;
    }

    private String descrption;
=======
    private String associationEmail;
    private String description;
    @ManyToMany
    private List<User> lUser;
//    @OneToMany
//    private List<Event> lEvent;
    private String adminLastName;
    private String adminFirstName;
    private String adminEmail;
    private int phone;
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
	public String getAssociationEmail() {
		return associationEmail;
	}
	public void setAssociationEmail(String associationEmail) {
		this.associationEmail = associationEmail;
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
	public String getAdminLastName() {
		return adminLastName;
	}
	public void setAdminLastName(String adminLastName) {
		this.adminLastName = adminLastName;
	}
	public String getAdminFirstName() {
		return adminFirstName;
	}
	public void setAdminFirstName(String adminFirstName) {
		this.adminFirstName = adminFirstName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
    
    
    
>>>>>>> 6a6af6cb4137a5f1c8898152a7a6911b66c3c8a8
}
