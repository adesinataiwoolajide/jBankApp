package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.UserRepo;
import com.springapplication.springadmindashboard.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("administrator")
public class UserController {

    @Autowired
    UserRepo userRepo;
    User user;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @RequestMapping("/users/")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("users/index");
        modelAndView.addObject("users", userRepo.findAll());

        return modelAndView;
    }

    @RequestMapping(value = "/users/save", method = RequestMethod.POST)
    public  ModelAndView store(@RequestParam("fullname") String name,
                               @RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("role") String role)
    {
        User user  = new User();
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/users/");


        user.setUsername(username);
        user.setName(name);
        user.setPassword(passwordEncoder.encode(password));
        user.setStatus(true);
        user.setRole(role);
        userRepo.save(user);
        return modelAndView;

    }

    @RequestMapping(value = "users/edit/{user_id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("user_id") Long user_id){
        ModelAndView modelAndView = new ModelAndView("users/edit");
        modelAndView.addObject("lists", userRepo.findById(user_id).orElse(null));
        modelAndView.addObject("users", userRepo.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "users/delete/{user_id}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("user_id") Long user_id){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/users/");
        userRepo.deleteById(user_id);
        return modelAndView;

    }

    @RequestMapping(value = "/users/update", method = RequestMethod.POST)
    public  ModelAndView update(@RequestParam("user_id") Long user_id,
                                @RequestParam("fullname") String name,
                               @RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("role") String role)
    {

        User user = (User) userRepo.findById(user_id).orElse(null);

        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/users/");
        user.setUsername(username);
        user.setName(name);

        if(password == null){
            String prev = user.getPassword();
            user.setPassword(passwordEncoder.encode(prev));
        }else {
            user.setPassword(passwordEncoder.encode(password));
        }

        user.setStatus(true);
        user.setRole(role);
        userRepo.save(user);
        return modelAndView;

    }
}


