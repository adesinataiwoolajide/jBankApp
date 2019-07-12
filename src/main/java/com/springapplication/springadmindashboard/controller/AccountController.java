package com.springapplication.springadmindashboard.controller;


import com.springapplication.springadmindashboard.Repository.*;
import com.springapplication.springadmindashboard.model.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

@Controller
@RequestMapping("administrator")
public class AccountController {

    @Autowired
    AccountOfficerRepository accountOfficerRepository;

    @Autowired
    CurrencyRepository currencyRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    AccountCategoryRepository accountCategoryRepository;

    @Autowired
    AccountRepository accountRepository;

    @RequestMapping("/accounts/")
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView("accounts/index");
        modelAndView.addObject("customer", customerRepository.findAll());
        modelAndView.addObject("officer", accountOfficerRepository.findAll());
        modelAndView.addObject("category", accountCategoryRepository.findAll());
        modelAndView.addObject("currency", currencyRepository.findAll());
        modelAndView.addObject("account", accountRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/account/save", method = RequestMethod.POST)
    public ModelAndView store(
            @RequestParam("customerid") Long customerid,
            @RequestParam("currencyid") Long currencyid,
            @RequestParam("accountcategoryid") Long accountcategoryid,
            @RequestParam("officerid") Long officerid
    ){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/accounts/");

        Account account = new Account();
        Customer customer = new Customer();
        customer.setCustomerid(customerid);
        Currency currency = new Currency();
        currency.setCurrencyid(currencyid);
        AccountCategory accountCategory = new AccountCategory();
        accountCategory.setAccountcategoryid(accountcategoryid);
        AccountOfficer accountOfficer = new AccountOfficer();
        accountOfficer.setOfficerid(officerid);

        Random random = new Random();
        Long acccountnumber = random.nextLong();

        account.setCustomer(customer);
        account.setAccountCategory(accountCategory);
        account.setAccountOfficer(accountOfficer);
        account.setCurrency(currency);
        account.setAccountnumber(acccountnumber);
        modelAndView.addObject("account", accountRepository.findAll());
        accountRepository.save(account);
        return modelAndView;

    }

    @RequestMapping(value = "/account/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("accountid") Long accountid,
            @RequestParam("customerid") Long customerid,
            @RequestParam("currencyid") Long currencyid,
            @RequestParam("accountcategoryid") Long accountcategoryid,
            @RequestParam("officerid") Long officerid,
            @RequestParam("accountnumber") Long acccountnumber
    ){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/accounts/");

        Account account = (Account) accountRepository.findById(accountid).orElse(null);
        Customer customer = new Customer();
        customer.setCustomerid(customerid);
        Currency currency = new Currency();
        currency.setCurrencyid(currencyid);
        AccountCategory accountCategory = new AccountCategory();
        accountCategory.setAccountcategoryid(accountcategoryid);
        AccountOfficer accountOfficer = new AccountOfficer();
        accountOfficer.setOfficerid(officerid);


        account.setCustomer(customer);
        account.setAccountCategory(accountCategory);
        account.setAccountOfficer(accountOfficer);
        account.setCurrency(currency);
        account.setAccountnumber(acccountnumber);
        modelAndView.addObject("account", accountRepository.findAll());
        accountRepository.save(account);
        return modelAndView;

    }

    @RequestMapping(value = "account/delete/{accountid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("accountid") Long accountid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/accounts/");
        accountRepository.deleteById(accountid);
        return modelAndView;
    }

    @RequestMapping(value = "account/edit/{accountid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("accountid") Long accountid){
        ModelAndView modelAndView = new ModelAndView("accounts/edit");
        modelAndView.addObject("customer", customerRepository.findAll());
        modelAndView.addObject("officer", accountOfficerRepository.findAll());
        modelAndView.addObject("category", accountCategoryRepository.findAll());
        modelAndView.addObject("currency", currencyRepository.findAll());
        modelAndView.addObject("account", accountRepository.findAll());
        modelAndView.addObject("acct", accountRepository.findById(accountid).orElse(null));
        return modelAndView;
    }






}
