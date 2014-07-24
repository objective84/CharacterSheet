package com.rational.controller;

import com.rational.model.entities.Language;
import com.rational.model.entities.Race;
import com.rational.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class AdminController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";

    private static final String ADMIN = "admin/admin";
    private static final String DB_ENTRY = "admin/db-entry/db-entry";
    private static final String CLASS_ENTRY = "admin/db-entry/classes";
    private static final String LANGUAGE_ENTRY = "admin/db-entry/languages";
    private static final String RACE_ENTRY = "admin/db-entry/races";
    private static final String SUBRACE_ENTRY = "admin/db-entry/subraces";
    private static final String EQUIPMENT_ENTRY = "admin/db-entry/equipment";
    private static final String SPELLS_ENTRY = "admin/db-entry/spells";

    private static final String REDIRECT_LANGUAGE_ENTRY = REDIRECT_PREFIX + "/languages" + REDIRECT_SUFFIX;
    private static final String REDIRECT_RACE_ENTRY = REDIRECT_PREFIX + "/races" + REDIRECT_SUFFIX;




    @Resource
    private AdminService adminService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView admin(){
        ModelAndView mav = new ModelAndView(ADMIN);

        return mav;
    }

    @RequestMapping(value = "/db-entry", method = RequestMethod.GET)
    public ModelAndView dbEntry(){
        ModelAndView mav = new ModelAndView(DB_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/classes", method = RequestMethod.GET)
    public ModelAndView classes(){
        ModelAndView mav = new ModelAndView(CLASS_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/languages", method = RequestMethod.GET)
    public ModelAndView languages(){
        ModelAndView mav = new ModelAndView(LANGUAGE_ENTRY);
        mav.addObject("languages", adminService.findAllLanguages());
        mav.addObject("language", new Language());
        return mav;
    }

    @RequestMapping(value = "/languages", method = RequestMethod.POST)
    public ModelAndView languages(@ModelAttribute Language language){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        adminService.saveLanguage(language);
        return mav;
    }

    @RequestMapping(value = "/races", method = RequestMethod.GET)
    public ModelAndView races(){
        ModelAndView mav = new ModelAndView(RACE_ENTRY);
        mav.addObject("race", new Race());
        mav.addObject("races", adminService.findAllRaces());
        mav.addObject("languages", adminService.findAllLanguages());
        mav.addObject("racialTraits", adminService.findAllTraits());
        mav.addObject("subraces", adminService.findAllSubraces());
        return mav;
    }

    @RequestMapping(value = "/races", method = RequestMethod.POST)
    public ModelAndView races(@ModelAttribute Race race){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        adminService.saveRace(race);
        return mav;
    }

    @RequestMapping(value = "/subraces", method = RequestMethod.GET)
    public ModelAndView subraces(){
        ModelAndView mav = new ModelAndView(SUBRACE_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/equipment", method = RequestMethod.GET)
    public ModelAndView equipment(){
        ModelAndView mav = new ModelAndView(EQUIPMENT_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/spells", method = RequestMethod.GET)
    public ModelAndView spells(){
        ModelAndView mav = new ModelAndView(SPELLS_ENTRY);

        return mav;
    }

}
