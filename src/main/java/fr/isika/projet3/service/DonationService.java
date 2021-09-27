package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Donation;


public interface DonationService {


	public List<Donation> getAllPartners();
	public Donation getDonationById(int id);
	public boolean saveDonation(Donation donation);
	public boolean deleteDOnationById(int id);
	
	
}
