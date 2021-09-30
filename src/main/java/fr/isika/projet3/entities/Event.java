package fr.isika.projet3.entities;

import javax.persistence.*;
import java.util.Date;

@Entity

@Table(name = "event")

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

    @ManyToOne
    private Association association;


}