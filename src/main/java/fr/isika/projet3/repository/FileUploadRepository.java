package fr.isika.projet3.repository;

import org.springframework.data.repository.CrudRepository;


import fr.isika.projet3.entities.UploadFile;

public interface FileUploadRepository extends CrudRepository<UploadFile, Long>{

}
