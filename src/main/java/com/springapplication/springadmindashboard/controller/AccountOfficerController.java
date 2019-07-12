package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.AccountOfficerRepository;
import com.springapplication.springadmindashboard.model.AccountOfficer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("administrator")
public class AccountOfficerController {

    @Autowired
    AccountOfficerRepository accountOfficerRepository;

    @RequestMapping(value = "/account_officers/", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("account_officers/index");
        modelAndView.addObject("officer", accountOfficerRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/account_officer/save", method = RequestMethod.POST)
    public ModelAndView store(
            @RequestParam("officername") String officername
    ) {

        AccountOfficer accountOfficer = new AccountOfficer();
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_officers/");
        accountOfficer.setOfficername(officername);
        accountOfficerRepository.save(accountOfficer);
        return modelAndView;

    }

    @RequestMapping(value = "/account_officer/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("officerid") Long officerid,
            @RequestParam("officername") String officername
    ) {

        AccountOfficer accountOfficer = (AccountOfficer) accountOfficerRepository.findById(officerid).orElse(null);
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_officers/");
        accountOfficer.setOfficername(officername);
        accountOfficerRepository.save(accountOfficer);
        return modelAndView;

    }

    @RequestMapping(value = "account_officer/delete/{officerid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("officerid") Long officerid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_officers/");
        accountOfficerRepository.deleteById(officerid);
        return modelAndView;
    }

    @RequestMapping(value = "account_officer/edit/{officerid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("officerid") Long officerid){
        ModelAndView modelAndView = new ModelAndView("account_officers/edit");
        modelAndView.addObject("office", accountOfficerRepository.findById(officerid).orElse(null));
        modelAndView.addObject("officer", accountOfficerRepository.findAll());
        return modelAndView;
    }


}
