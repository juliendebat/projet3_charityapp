package fr.isika.projet3.entities;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="promoters")
public class Promoter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int mdp;
	
	@OneToOne(cascade = CascadeType.ALL)
	private User user;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Event> lEvent;
	
	
	public Promoter() {
		super();
		lEvent = new ArrayList<>();
	}
	public List<Event> getlEvent() {
		return lEvent;
	}
	public void setlEvent(List<Event> lEvent) {
		this.lEvent = lEvent;
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
		this.id = id;
	}
	public int getMdp() {
		return mdp;
	}
	public void setMdp(int mdp) {
		this.mdp = mdp;
	}
	
	public void addEvent(Event event) {
		lEvent.add(event);
	}
	
	
	
}
