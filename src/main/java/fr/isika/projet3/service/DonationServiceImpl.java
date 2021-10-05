package fr.isika.projet3.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.entities.State;
import fr.isika.projet3.entities.User;
import fr.isika.projet3.repository.DonationRepository;

import javax.transaction.Transactional;

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

	public Double getSumDonationsByAssociation(List<User> users) {
		List<Donation> donationlist = new ArrayList<>();
		for (User user : users) {			
			donationlist.addAll(repository.findByUser(user));
		}		
		Double sum =0d;		
		for (Donation donation : donationlist) {
			sum+=donation.getAmount();
		}
		return sum;
	}

	@Override
	public List<Donation> getAllPaidDonationsByAssociation(List<Donation> donations) {
		
		List<Donation> paidDonations = new ArrayList<>();
		for (Donation donation : donations)
			if(donation.getState()!=null) {
			if(donation.getState().equals(State.done)) {
				paidDonations.add(donation);
		}
			}
		return paidDonations;
	}
	
	@Override
	public List<Donation> getAllNotPaidDonationsByAssociation(List<Donation> donations) {
		
		List<Donation> paidDonations = new ArrayList<>();
		for (Donation donation : donations)
			if(donation.getState()!=null) {
			if(donation.getState().equals(State.inprogress)) {
				paidDonations.add(donation);
		}
			}
		return paidDonations;
	}

	
	
	
	@Override
	public List<Donation> getAllDonationByAssociation(List<User> contributors) {
		List<Donation> donationlist = new ArrayList<>();
		for (User user : contributors) {			
			donationlist.addAll(repository.findByUser(user));
		}	
		return donationlist;
	}
	
	@Override
	public void checkDonation(Long iddonation) {
		Donation donation= this.getDonationById(iddonation);
		donation.setState(State.done);
		this.saveDonation(donation);
	}

	@Override
	public void cancelDonation(Long iddonation) {
		Donation donation= this.getDonationById(iddonation);
		donation.setState(State.rejected);
		this.saveDonation(donation);
	}

	@Override
	public List<Donation> getDonationsByUser(User user) {
		List<Donation> donations = repository.findByUser(user);
		return donations;
	}
	
}