package com.springapplication.springadmindashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

//    @RequestMapping("")
//    public String  loadLogin(){
//
//        return "loginn";
//
//    }

    @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }

    @RequestMapping("/logout-success")
    public String logout(){

        return "login";
    }
}
