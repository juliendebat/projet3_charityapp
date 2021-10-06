package fr.isika.projet3.entities;

import javax.persistence.*;
import java.util.Date;

@Entity

@Table(name = "events")

public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String eventName;
    private String eventDescription;
    private String eventCategory;
    private String eventCity;
    private String eventCountry;
    private String eventDateStart;
    private String eventDateEnd;
    private String eventThumbnailLink;

//    @ManyToOne(cascade = CascadeType.ALL)
//    private Association association;
    

    public Volonteer getVolonteer() {
		return volonteer;
	}

	public void setVolonteer(Volonteer volonteer) {
		this.volonteer = volonteer;
	}



    @ManyToOne(fetch=FetchType.EAGER)
    private Promoter promoter;

    @ManyToOne(cascade = CascadeType.ALL)
    private Volonteer volonteer;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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
        return eventCountry;
    }

    public void setEventCountry(String eventCountry) {
        this.eventCountry = eventCountry;
    }

    public String getEventDateStart() {
        return eventDateStart;
    }

    public void setEventDateStart(String eventDateStart) {
        this.eventDateStart = eventDateStart;
    }

    public String getEventDateEnd() {
        return eventDateEnd;
    }

    public void setEventDateEnd(String eventDateEnd) {
        this.eventDateEnd = eventDateEnd;
    }

    public String getEventThumbnailLink() {
        return eventThumbnailLink;
    }

    public void setEventThumbnailLink(String eventThumbnailLink) {
        this.eventThumbnailLink = eventThumbnailLink;
    }

//    public Association getAssociation() {
//        return association;
//    }
//
//    public void setAssociation(Association association) {
//        this.association = association;
//    }

    public Promoter getPromoter() {
		return promoter;
	}

	public void setPromoter(Promoter promoter) {
		this.promoter = promoter;
	}


}