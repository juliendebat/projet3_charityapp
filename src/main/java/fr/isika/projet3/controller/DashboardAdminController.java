package fr.isika.projet3.controller;

import fr.isika.projet3.entities.*;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.service.MailService;
import fr.isika.projet3.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@Controller
public class DashboardAdminController {

	private MailService mailService;

	private String emailSender = "bravoexcellent74@gmail.com";

	private HttpSession associationSession;
	private Association ass;

	private UserService userService;

	public DashboardAdminController(UserService userService, MailService mailService) {
		this.userService = userService;
		this.mailService = mailService;
	}

	@RequestMapping(value = { "/dashboardAdmin/home" }, method = RequestMethod.GET)
	public ModelAndView pageindex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
	
		// recupérer session de LoginControler
		associationSession = request.getSession();
		ass = (Association) associationSession.getAttribute("assos");
		mv.setViewName("dashboardAdmin/home");

		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/usersList", method = RequestMethod.GET)
	public ModelAndView displayAllUsers() {
		ModelAndView mv = new ModelAndView("/dashboardAdmin/usersList");
		List<User> usersList = userService.getAllUserByAssociation(ass);
		mv.addObject("usersList", usersList);

		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/mailForm/{id}", method = RequestMethod.GET)
	public ModelAndView mailSender(HttpServletRequest request, @PathVariable Long id) {
		ModelAndView mv = new ModelAndView("dashboardAdmin/mailForm");
		User user = userService.getUserById(id);
		String userMail = user.getEmail();
		mv.addObject("userMail", userMail);
		return mv;
	}

	@RequestMapping(value = "/dashboardAdmin/mailForm/{id}", method = RequestMethod.POST)
	public ModelAndView mailsend(HttpServletRequest request, @PathVariable Long id) {
		ModelAndView mv = new ModelAndView("redirect:/dashboardAdmin/home");
		User user = userService.getUserById(id);
		String userMail = user.getEmail();
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		mailService.sendEmail(emailSender, userMail, subject ,message );
		return mv;
	}
	@RequestMapping(value = { "/dashboardAdmin/headerAdmin" }, method = RequestMethod.GET)
	public ModelAndView initHeader(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/headerAdmin");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/404" }, method = RequestMethod.GET)
	public ModelAndView init404(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/404");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/footerAdmin" }, method = RequestMethod.GET)
	public ModelAndView initFooter(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/footerAdmin");
		return mv;

	}

	@RequestMapping(value = { "/dashboardAdmin/content" }, method = RequestMethod.GET)
	public ModelAndView initContent(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/content");
		return mv;
	}

	@RequestMapping(value = { "/dashboardAdmin/allPartnersAss" }, method = RequestMethod.GET)
	public ModelAndView showAllPartners(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboardAdmin/allPartnersAss");
		List<User> partners = userService.getAllPartnersByAssociation(ass);
		mv.addObject("partnerlist", partners);
		return mv;
	}

	// julien kill session
	@RequestMapping(value = "/killSession")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/loginAssociation"; // Where you go after logout here.
	}

}
