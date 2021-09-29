package fr.isika.projet3.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "event")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String eventName;
    private String eventDescription;
    private String eventCategory;
    private String eventCity;
    private String EventCountry;
    private Date EventDateStart;
    private Date EventDateEnd;
    private String EventThumbnailLink;

    @ManyToOne
    private Association association;
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getEventDescription() {
        return eventDescription;
    }

    public void setEventDescription(String eventDescription) {
        this.eventDescription = eventDescription;
    }

    public String getEventCategory() {
        return eventCategory;
    }

    public void setEventCategory(String eventCategory) {
        this.eventCategory = eventCategory;
    }

    public String getEventCity() {
        return eventCity;
    }

    public void setEventCity(String eventCity) {
        this.eventCity = eventCity;
    }

    public String getEventCountry() {
        return EventCountry;
    }

    public void setEventCountry(String eventCountry) {
        EventCountry = eventCountry;
    }

    public Date getEventDateStart() {
        return EventDateStart;
    }

    public void setEventDateStart(Date eventDateStart) {
        EventDateStart = eventDateStart;
    }

    public Date getEventDateEnd() {
        return EventDateEnd;
    }

    public void setEventDateEnd(Date eventDateEnd) {
        EventDateEnd = eventDateEnd;
    }

    public String getEventThumbnailLink() {
        return EventThumbnailLink;
    }

    public void setEventThumbnailLink(String eventThumbnailLink) {
        EventThumbnailLink = eventThumbnailLink;
    }

	public Event(int id, String eventName, String eventDescription, String eventCategory, String eventCity,
			String eventCountry, Date eventDateStart, Date eventDateEnd, String eventThumbnailLink,
			Association association) {
		super();
		this.id = id;
		this.eventName = eventName;
		this.eventDescription = eventDescription;
		this.eventCategory = eventCategory;
		this.eventCity = eventCity;
		EventCountry = eventCountry;
		EventDateStart = eventDateStart;
		EventDateEnd = eventDateEnd;
		EventThumbnailLink = eventThumbnailLink;
		this.association = association;
	}

	public Event() {
		super();
	}
    
    
}

