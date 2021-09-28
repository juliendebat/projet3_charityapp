package fr.isika.projet3.controller;

import fr.isika.projet3.entities.*;
import fr.isika.projet3.repository.UserRepository;
import fr.isika.projet3.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class DashboardAdminController {


    private UserService userService;

    public DashboardAdminController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = {"/dashboardAdmin/index" }, method = RequestMethod.GET)
    public ModelAndView hello1(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();

        List usersList = userService.getAllUsers();
       mv.addObject("usersList",usersList );


        mv.setViewName("dashboardAdmin/index");
        return mv;
    }

    @RequestMapping(value = {"/dashboardAdmin/headerAdmin" }, method = RequestMethod.GET)
    public ModelAndView initHeader(HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardAdmin/headerAdmin");
        return mv;
    }
}
