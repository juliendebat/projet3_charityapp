package fr.isika.projet3.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fr.isika.projet3.entities.UploadFile;
import fr.isika.projet3.service.FileUploadService;

@Controller
public class FileUploadController {
	@Autowired
	private FileUploadService fileUploadService;

	public FileUploadController() {

	}

	@Autowired
	public FileUploadController(FileUploadService fileUploadService) {
		this.fileUploadService = fileUploadService;
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public ModelAndView showUploadForm() {
		ModelAndView mv = new ModelAndView("upload");
		List<CommonsMultipartFile> files = new ArrayList<>();
		mv.addObject("file", files);
		return mv;
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ModelAndView handleFileUpload(HttpServletRequest request,
			@ModelAttribute("file") ArrayList<CommonsMultipartFile> fileUpload, BindingResult result) { // Je ne
																											// comprends
																											// pas
																											// pourquoi
																											// le
																											// fichier
																											// est
																											// null!!!!
		ModelAndView mv = new ModelAndView();

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}

		if (fileUpload != null && fileUpload.isEmpty()) {
			for (CommonsMultipartFile aFile : fileUpload) {

				System.out.println("Saving file: " + aFile.getOriginalFilename());

				UploadFile uploadFile = new UploadFile();
				uploadFile.setFileName(aFile.getOriginalFilename());
				uploadFile.setData(aFile.getBytes());
				fileUploadService.save(uploadFile);
			}
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}

}
