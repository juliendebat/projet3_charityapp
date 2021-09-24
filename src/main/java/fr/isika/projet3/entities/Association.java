package fr.isika.projet3.entities;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "associations")
public class Association {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String associassionName;
    private int rnaNumber;
    private String address;
    private int zipCode;
    private String city;
    private String country;

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
}
