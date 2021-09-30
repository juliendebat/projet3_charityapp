package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.State;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.DonationRepository;

@Service
public class DonationServiceImpl implements DonationService {

	@Autowired
	private DonationRepository repository;

	public DonationServiceImpl() {

	}

	public DonationServiceImpl(DonationRepository repository) {
		super();
		this.repository = repository;
	}

	@Override
	public Donation getDonationById(Long id) {
		Donation donnation = repository.findById(id).get();
		return donnation;
	}

	@Override
	public boolean saveDonation(Donation donation) {
		try {
			repository.save(donation);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}
	@Override
	public boolean deleteDonationById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

	@Override
	public List<Donation> getAllDonations() {
		List<Donation> list = new ArrayList<Donation>();
		repository.findAll().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public List<Donation> getAllDonationsByAssociation(List<User> users) {
		List<Donation> donationlist = new ArrayList<>();
		for (User user : users) {			
			donationlist.add(repository.findByUser(user));
		}
		return donationlist;		
	}

	@Override
	public List<Donation> getAllPaidDonationsByAssociation(List<Donation> donations) {
		
		List<Donation> paidDonations = new ArrayList<>();
		for (Donation donation : donations)
			if(donation.getState().equals(State.done)) {
				paidDonations.add(donation);
		}
		return paidDonations;
	}

	
	
}