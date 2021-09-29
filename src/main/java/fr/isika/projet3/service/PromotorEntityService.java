package fr.isika.projet3.service;

import java.util.List;

import fr.isika.projet3.entities.PromotorEntity;



public interface PromotorEntityService {
	public List<PromotorEntity> getAllPromotorsEntity();
	public PromotorEntity getPromotorEntityById(int id);
	public boolean savePromotorEntity(PromotorEntity user);
	public boolean deletePromotorEntityById(int id);
}
