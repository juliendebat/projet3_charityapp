package fr.isika.projet3.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.isika.projet3.entities.UploadFile;

import fr.isika.projet3.repository.FileUploadRepository;

@Repository
public class FileUploadServiceImpl implements FileUploadService{

	@Autowired
	private FileUploadRepository fileUploadRepository;
     
    public FileUploadServiceImpl() {
    }
 
    public FileUploadServiceImpl(FileUploadRepository fileUploadRepository) {
        this.fileUploadRepository = fileUploadRepository;
    }
	@Override
	@Transactional
	public boolean save(UploadFile uploadFile) {
		// TODO Auto-generated method stub
		try {
			fileUploadRepository.save(uploadFile);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	


}
