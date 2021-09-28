package fr.isika.projet3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import fr.isika.projet3.entities.Donation;
import fr.isika.projet3.repository.DonationRepository;
import fr.isika.projet3.repository.UserRepository;

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
	public List<Donation> getAllPartners() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Donation getDonationById(int id) {
		// TODO Auto-generated method stub
		return null;
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
	public boolean deleteDOnationById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}