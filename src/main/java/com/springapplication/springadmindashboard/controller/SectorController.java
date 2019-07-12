package com.springapplication.springadmindashboard.controller;

import com.springapplication.springadmindashboard.Repository.SectorRepository;
import com.springapplication.springadmindashboard.model.Sector;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("administrator")
public class SectorController {

    @Autowired
    SectorRepository sectorRepository;
    @RequestMapping("/sectors/")
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView("sectors/index");

        modelAndView.addObject("sector", sectorRepository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/sector/save", method = RequestMethod.POST)
    public ModelAndView store(
            @RequestParam("sectorname") String sectorname
    ){

        Sector sector = new Sector();
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/sectors/");
        sector.setSectorname(sectorname);
        sectorRepository.save(sector);
        return modelAndView;


    }

    @RequestMapping(value = "sector/delete/{sectorid}", method = RequestMethod.GET)
    public ModelAndView destroy(@PathVariable("sectorid") Long sectorid){
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/sectors/");
        sectorRepository.deleteById(sectorid);
        return modelAndView;
    }

    @RequestMapping(value = "sector/edit/{sectorid}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("sectorid") Long sectorid){
        ModelAndView modelAndView = new ModelAndView("sectors/edit");
        modelAndView.addObject("sect", sectorRepository.findById(sectorid).orElse(null));
        modelAndView.addObject("sector", sectorRepository.findAll());
        return modelAndView;
    }


    @RequestMapping(value = "/sector/update", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam("sectorid") Long sectorid,
            @RequestParam("sectorname") String sectorname
    ){

        Sector sector = (Sector) sectorRepository.findById(sectorid).orElse(null);
        ModelAndView modelAndView = new ModelAndView("redirect:/administrator/sectors/");
        sector.setSectorname(sectorname);
        sectorRepository.save(sector);
        return modelAndView;


    }
}
