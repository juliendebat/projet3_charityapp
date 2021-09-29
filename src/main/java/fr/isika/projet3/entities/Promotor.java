package fr.isika.projet3.entities;

import javax.persistence.CascadeType;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="promotors")
public class Promotor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int funding;
	private int mdp;
	
	@OneToOne
	private User user;

	@OneToOne
	PromotorEntity promotorentity;
	

	public PromotorEntity getPromotorentity() {
		return promotorentity;
	}
	public void setPromotorentity(PromotorEntity promotorentity) {
		this.promotorentity = promotorentity;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		id = id;
	}
	public int getFunding() {
		return funding;
	}
	public void setFunding(int funding) {
		this.funding = funding;
	}
	public int getMdp() {
		return mdp;
	}
	public void setMdp(int mdp) {
		this.mdp = mdp;
	}
	
	
	
}
