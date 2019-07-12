package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("administrator")
public class DashboardController {

    @Autowired

    @RequestMapping("/dashboard")
    public String  loadAdmin()
    {
        return "dashboard";
    }

    private void addUserInSession(User user, HttpSession session){

        session.setAttribute("user", user);
        session.setAttribute("userid", user.getUser_id());
        session.setAttribute("role", user.getRole());
        session.setAttribute("username", user.getUsername());
        session.setAttribute("name", user.getName());
    }
}
