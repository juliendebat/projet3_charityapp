package fr.isika.projet3.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="partners")
public class Partner {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private int funding;
	private int mdp;
	
	@OneToOne
	private User user;

	@OneToOne
	PartnerEntity partnerentity;
	

	public PartnerEntity getPartnerentity() {
		return partnerentity;
	}
	public void setPartnerentity(PartnerEntity partnerentity) {
		this.partnerentity = partnerentity;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
