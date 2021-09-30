package fr.isika.projet3.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
@Table(name = "donations")
public class Donation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private Long Id;
	private double amount;	
	private State state;	

	@ManyToOne
	private User user;

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public User getDonnateur() {
		return user;
	}

	public void setDonnateur(User donnateur) {
		this.user = donnateur;
	}
	
	
	


}
