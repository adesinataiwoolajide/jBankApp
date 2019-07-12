package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.CustomerRepository;
import com.springapplication.springadmindashboard.Repository.SectorRepository;
import com.springapplication.springadmindashboard.model.Customer;
import com.springapplication.springadmindashboard.model.Sector;
import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.*;
import java.util.List;

@Controller
@RequestMapping("administrator")
@Component
public class CustomerController {

    @Autowired
    CustomerRepository customerRepository;
    @Autowired
    SectorRepository sectorRepository;

    @RequestMapping(value = "/customers/", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("customers/index");
        modelAndView.addObject("customer", customerRepository.findAll());
        modelAndView.addObject("secto", sectorRepository.findAll());
        return modelAndView;
    }

    @RequestMapping("/customers/save")
    public ModelAndView store(
            @RequestParam("customername") String customername,
            @RequestParam("mnemonic") String mnemonic,
            @RequestParam("gender") String gender,
            @RequestParam("phonenumber") Long phonenumber,
            @RequestParam("nationality") String nationality,
            @RequestParam("sectorid") Long sectorid,
            @RequestParam("address") String address,
            @RequestParam("kinname") String kinname,
            @RequestParam("kinaddress") String kinaddress

    ){
        Customer customer = new Customer();
        Sector sector = new Sector();
        sector.setSectorid(sectorid);
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/customers/");
        customer.setCustomername(customername);
        customer.setMnemonic(mnemonic);
        customer.setGender(gender);
        customer.setPhonenumber(phonenumber);
        customer.setNationality(nationality);
        customer.setKinname(kinname);
        customer.setKinaddress(kinaddress);

        customer.setSector(sector);
        customer.setNationality(nationality);
        customer.setAddress(address);
        customerRepository.save(customer);
        return modelAndView;

    }

    @RequestMapping(value = "customer/delete/{customerid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("customerid") Long customerid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/customers/");
        customerRepository.deleteById(customerid);
        return modelAndView;
    }

    @RequestMapping(value = "customer/edit/{customerid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("customerid") Long customerid){
        ModelAndView modelAndView = new ModelAndView("customers/edit");
        modelAndView.addObject("cust", customerRepository.findById(customerid).orElse(null));
        modelAndView.addObject("customer", customerRepository.findAll());
        modelAndView.addObject("secto", sectorRepository.findAll());
        return modelAndView;
    }

    @RequestMapping("/customer/update")
    public ModelAndView update(
            @RequestParam("customerid") Long customerid,
            @RequestParam("customername") String customername,
            @RequestParam("mnemonic") String mnemonic,
            @RequestParam("gender") String gender,
            @RequestParam("phonenumber") Long phonenumber,
            @RequestParam("nationality") String nationality,
            @RequestParam("sectorid") Long sectorid,
            @RequestParam("address") String address,
            @RequestParam("kinname") String kinname,
            @RequestParam("kinaddress") String kinaddress

    ){
        Customer customer = (Customer) customerRepository.findById(customerid).orElse(null);
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/customers/");

        Sector sector = new Sector();
        sector.setSectorid(sectorid);
        customer.setCustomername(customername);
        customer.setMnemonic(mnemonic);
        customer.setGender(gender);
        customer.setPhonenumber(phonenumber);
        customer.setKinname(kinname);
        customer.setKinaddress(kinaddress);

        customer.setSector(sector);
        customer.setNationality(nationality);
        customer.setAddress(address);
        customerRepository.save(customer);
        return modelAndView;

    }
}
