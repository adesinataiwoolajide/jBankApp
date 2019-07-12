package com.springapplication.springadmindashboard.controller;


import com.springapplication.springadmindashboard.Repository.CurrencyRepository;
import com.springapplication.springadmindashboard.model.Currency;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("administrator")
public class CurrencyController {

    @Autowired
    CurrencyRepository currencyRepository;

    @RequestMapping(value = "/currencies/", method = RequestMethod.GET)
    public ModelAndView index()
    {
        ModelAndView modelAndView = new ModelAndView("currencies/index");
        modelAndView.addObject("currency", currencyRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "currency/save", method = RequestMethod.POST)
    public ModelAndView store(
            @RequestParam("currencyname") String currencyname,
            @RequestParam("currencymnemonic") String currencymnemonic
    )
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/currencies/");
        Currency currency = new Currency();
        currency.setCurrencyname(currencyname);
        currency.setCurrencymnemonic(currencymnemonic);
        currencyRepository.save(currency);
        return modelAndView;
    }

    @RequestMapping(value = "currency/delete/{currencyid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("currencyid") Long currencyid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/currencies/");
        currencyRepository.deleteById(currencyid);
        return modelAndView;
    }

    @RequestMapping(value = "currency/edit/{currencyid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("currencyid") Long currencyid){
        ModelAndView modelAndView = new ModelAndView("currencies/edit");
        modelAndView.addObject("currency", currencyRepository.findById(currencyid).orElse(null));
        modelAndView.addObject("currenc", currencyRepository.findAll());
        return modelAndView;
    }


    @RequestMapping(value = "currency/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("currencyid") Long currencyid,
            @RequestParam("currencyname") String currencyname,
            @RequestParam("currencymnemonic") String currencymnemonic
    )
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/currencies/");
        Currency currency = (Currency) currencyRepository.findById(currencyid).orElse(null);
        currency.setCurrencyname(currencyname);
        currency.setCurrencymnemonic(currencymnemonic);
        currencyRepository.save(currency);
        return modelAndView;
    }



}
