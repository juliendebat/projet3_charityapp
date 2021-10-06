package fr.isika.projet3.entities;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "promoters")
public class Promoter {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL)
	private User user;

	@OneToMany(mappedBy="promoter")
	private List<Event> events;
	
	
	public Promoter() {
		events = new ArrayList<Event>();
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
	
	public List<Event> getEvents() {
		return events;
	}
	public void setEvents(List<Event> events) {
		this.events = events;
	}
	public void addEvent(Event event) {
		events.add(event);
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}