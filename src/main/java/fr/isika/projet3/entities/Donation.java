package fr.isika.projet3.entities;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
@Table(name = "donations")
public class Donation {
	
	@Id
	private int Id;
	private double amount;
	
	private State state;
	
	private int paymentMethod;
	
	@OneToOne
	private User donnateur;
	

}
