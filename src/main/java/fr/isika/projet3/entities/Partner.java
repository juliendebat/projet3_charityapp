package fr.isika.projet3.entities;


import javax.persistence.CascadeType;
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
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL)
	private User user;


	@OneToOne(mappedBy ="partner")
	PartnerEntity partnerentity;


	public User getUser() {
		return user;
	}
	public PartnerEntity getPartnerentity() {
		return partnerentity;
	}
	public void setPartnerentity(PartnerEntity partnerentity) {
		this.partnerentity = partnerentity;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}