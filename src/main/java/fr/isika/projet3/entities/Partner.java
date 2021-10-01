package fr.isika.projet3.entities;

import javax.persistence.*;

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

	@OneToOne(cascade = CascadeType.ALL)
	private PartnerEntity partnerEntity;

	public PartnerEntity getPartnerentity() {
		return partnerEntity;
	}
	public void setPartnerentity(PartnerEntity partnerentity) {
		this.partnerEntity = partnerentity;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
