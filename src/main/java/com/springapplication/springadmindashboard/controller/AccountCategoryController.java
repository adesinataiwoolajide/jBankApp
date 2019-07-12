package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.AccountCategoryRepository;
import com.springapplication.springadmindashboard.model.AccountCategory;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("administrator")
public class AccountCategoryController {

    @Autowired
    AccountCategoryRepository accountCategoryRepository;
    public String message = "Success";

    public String error(){
        return "Failure !";
    }
    @RequestMapping("/account_category/")
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView("account_category/index");
        modelAndView.addObject("account_category", accountCategoryRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/account_category/save", method = RequestMethod.POST)
    public ModelAndView store(
            @RequestParam("accountcategoryname") String accountcategoryname,
            @RequestParam("amount") Long amount
    ){
        AccountCategory accountCategory = new AccountCategory();
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_category/");
        accountCategory.setAccountcategoryname(accountcategoryname);
        accountCategory.setAmount(amount);
        accountCategoryRepository.save(accountCategory);
        return modelAndView;

    }

    @RequestMapping(value = "account_category/delete/{accountcategoryid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("accountcategoryid") Long accountcategoryid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_category/");
        accountCategoryRepository.deleteById(accountcategoryid);
        return modelAndView;
    }

    @RequestMapping(value = "account_category/edit/{accountcategoryid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("accountcategoryid") Long accountcategoryid){
        ModelAndView modelAndView = new ModelAndView("account_category/edit");
        modelAndView.addObject("category", accountCategoryRepository.findById(accountcategoryid).orElse(null));
        modelAndView.addObject("account_category", accountCategoryRepository.findAll());

        return modelAndView;
    }


    @RequestMapping(value = "/account_category/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("accountcategoryid") Long accountcategoryid,
            @RequestParam("accountcategoryname") String accountcategoryname,
            @RequestParam("amount") Long amount
    ){

        AccountCategory accountCategory = (AccountCategory) accountCategoryRepository.findById(accountcategoryid).orElse(null);
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/account_category/");
        accountCategory.setAccountcategoryname(accountcategoryname);
        accountCategory.setAmount(amount);
        accountCategoryRepository.save(accountCategory);
        return modelAndView;


    }


}
