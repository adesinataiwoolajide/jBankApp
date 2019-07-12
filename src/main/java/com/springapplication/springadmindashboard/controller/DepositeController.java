package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.*;
import com.springapplication.springadmindashboard.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;

import static javax.persistence.criteria.Predicate.BooleanOperator.OR;
import static org.apache.logging.log4j.ThreadContext.isEmpty;

@Controller
@RequestMapping("administrator")
public class DepositeController {

    @Autowired
    DepositeRepository depositeRepository;

    @Autowired
    AccountRepository accountRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    TransactionRepository transactionRepository;

    @Autowired
    CustomerBalanceRepository customerBalanceRepository;
    @RequestMapping(value = "/deposite/", method = RequestMethod.GET)
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView("deposit/create");
        modelAndView.addObject("account", accountRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/deposite/create/{accountnumber}/{accountid}/{customerid}/", method = RequestMethod.GET)
    public ModelAndView create(@PathVariable("accountid") Long accountid,
                               @PathVariable("customerid") Long customerid,
                               @PathVariable("accountnumber") Long accountnumber){

        ModelAndView modelAndView = new ModelAndView("deposit/index");

        modelAndView.addObject("deposite", depositeRepository.findAll());
        modelAndView.addObject("customer", customerRepository.findByCustomerid(customerid));
        modelAndView.addObject("account", accountRepository.findByAccountid(accountid));
        modelAndView.addObject("accounts", accountRepository.findByAccountnumber(accountnumber));
        return modelAndView;
    }

    @RequestMapping(value = "/deposite/save", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("accountid") Long accountid,
                             @RequestParam("amount") Long amount,
                             @RequestParam("sendername") String sendername,
                             @RequestParam("senderphone") Long senderphone,
                             @RequestParam("customername") String customername,
                             @RequestParam("customerid") Long customerid){

        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/deposite/list");

        CustomerBalance customerBalance = new CustomerBalance();
        customerBalance.getBalanceid();
        Customer customer = new Customer();
        customer.setCustomerid(customerid);
        Account account = new Account();
        account.setAccountid(accountid);
        Deposite deposite = new Deposite();

        if((sendername == "Self") || (sendername == "SELF") || (sendername == "self")){
            deposite.setSendername(customername);
        }else{
            deposite.setSendername(sendername);
        }
        deposite.setAmount(amount);
        deposite.setSenderphone(senderphone);
        deposite.setAccount(account);
        deposite.setCustomer(customer);

        Transaction transaction = new Transaction();
        transaction.setAccount(account);
        transaction.setCustomer(customer);
        transaction.setAmount(amount);
        transaction.setTransactiontype("DR");

        customerBalance.setCloseab(amount);
        customerBalance.setOnlinecb(amount);
        customerBalance.setWorkingb(amount);
        customerBalance.setOpenab(amount);
        customerBalance.setOnlineac(amount);
        customerBalance.setAccount(account);


       // deposite.setDepositedate(DateFormat.getDateInstance());

//        customerBalance.getCloseab();
//        customerBalance.getOnlineac();
//        customerBalance.getOnlinecb();
//        customerBalance.getWorkingb();
//        customerBalance.getOpenab();

        depositeRepository.save(deposite);
        transactionRepository.save(transaction);
        customerBalanceRepository.save(customerBalance);
        return modelAndView;


    }

    @RequestMapping(value = "/deposite/list", method = RequestMethod.GET)
    public ModelAndView list(){

        ModelAndView modelAndView = new ModelAndView("deposit/list");
        modelAndView.addObject("account", depositeRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "deposite/delete/{depositeid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("depositeid") Long depositeid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/deposite/list");
        depositeRepository.deleteById(depositeid);
        return modelAndView;
    }

    @RequestMapping(value = "deposite/edit/{depositeid", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("depositeid") Long depositeid
                            ){

        ModelAndView modelAndView = new ModelAndView("deposit/edit");
        modelAndView.addObject("account", depositeRepository.findAll());
        modelAndView.addObject("deposite", depositeRepository.findById(depositeid).orElse(null));

        //modelAndView.addObject("trans", transactionRepository.findById(accountid));
        return modelAndView;
    }


    @RequestMapping(value = "/deposite/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("depositeid") Long depositeid,
            @RequestParam("accountid") Long accountid,
            @RequestParam("amount") Long amount,
            @RequestParam("sendername") String sendername,
            @RequestParam("senderphone") Long senderphone,
            @RequestParam("customername") String customername,
            @RequestParam("customerid") Long customerid){

        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/deposite/list");
        Deposite deposite = (Deposite) depositeRepository.findById(depositeid).orElse(null);
        CustomerBalance customerBalance = new CustomerBalance();
        customerBalance.getBalanceid();
        Customer customer = new Customer();
        customer.setCustomerid(customerid);
        Account account = new Account();
        account.setAccountid(accountid);

        if((sendername == "Self") || (sendername == "SELF") || (sendername == "self")){
            deposite.setSendername(customername);
        }else{
            deposite.setSendername(sendername);
        }

        Transaction transaction = new Transaction();
        transaction.setAccount(account);
        transaction.setCustomer(customer);
        transaction.setAmount(amount);
        transaction.setTransactiontype("DR");

        deposite.setAmount(amount);
        deposite.setSenderphone(senderphone);
        deposite.setAccount(account);
        deposite.setCustomer(customer);
        depositeRepository.save(deposite);
        transactionRepository.save(transaction);
        return modelAndView;


    }
}
