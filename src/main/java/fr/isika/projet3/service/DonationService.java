package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.User;


public interface DonationService {


	public List<Donation> getAllDonations();
	public Donation getDonationById(Long id);
	public boolean saveDonation(Donation donation);
	public boolean deleteDonationById(Long id);
	public Double getSumDonationsByAssociation(List<User> users);
	public List<Donation> getAllPaidDonationsByAssociation(List<Donation> donations);
	public List<Donation> getAllDonationByAssociation(List<User> contributors);
	public void checkDonation(Long iddonation);
	public void cancelDonation(Long iddonation);
	
	public List<Donation> getDonationsByUser(User user);

	
}

