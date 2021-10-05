package fr.isika.projet3.entities;

import sun.security.util.Password;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "promoters")
public class Promoter {
<<<<<<< HEAD

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String password;

    @OneToOne(cascade = CascadeType.ALL)
    private User user;

    @OneToMany(cascade = CascadeType.ALL)
    private List<Event> lEvent;


    public Promoter() {
        super();
        lEvent = new ArrayList<Event>();
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

    public String getMdp() {
        return password;
    }

    public void setMdp(int mdp) {
        this.password = password;
    }

    public void addEvent(Event event) {
        lEvent.add(event);
    }


=======
	
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
	
	
	
>>>>>>> b8022a3fc02ca38cede83f6397d9a9340023080b
}
