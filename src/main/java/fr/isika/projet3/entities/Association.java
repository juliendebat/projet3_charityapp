package fr.isika.projet3.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
    private String descrption;
}
