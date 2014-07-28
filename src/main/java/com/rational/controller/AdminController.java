package com.rational.controller;

import com.rational.converters.RaceConverter;
import com.rational.forms.RaceForm;
import com.rational.model.entities.Language;
import com.rational.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@RequestMapping(value="/admin")
@Controller
public class AdminController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";

    private static final String ADMIN = "admin/admin";
    private static final String DB_ENTRY = "admin/db-entry";
    private static final String CLASS_ENTRY = "admin/db-entry/classes";
    private static final String LANGUAGE_ENTRY = "admin/db-entry/languages";
    private static final String RACE_ENTRY = "admin/db-entry/races";
    private static final String SUBRACE_ENTRY = "admin/db-entry/subraces";
    private static final String EQUIPMENT_ENTRY = "admin/db-entry/equipment";
    private static final String SPELLS_ENTRY = "admin/db-entry/spells";

    private static final String REDIRECT_LANGUAGE_ENTRY = REDIRECT_PREFIX + "/languages" + REDIRECT_SUFFIX;
    private static final String REDIRECT_RACE_ENTRY = REDIRECT_PREFIX + "/races" + REDIRECT_SUFFIX;;

    @Resource
    private AdminService adminService;


    @RequestMapping(value = "/db-entry", method = RequestMethod.GET)
    public ModelAndView dbEntry(final Model model){
        ModelAndView mav = new ModelAndView(DB_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/db-entry/classes", method = RequestMethod.GET)
    public ModelAndView classes(final Model model){
        ModelAndView mav = new ModelAndView(CLASS_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", method = RequestMethod.GET)
    public ModelAndView languages(final Model model){
        ModelAndView mav = new ModelAndView(LANGUAGE_ENTRY);
        mav.addObject("languages", adminService.findAllLanguages());
        mav.addObject("language", new Language());
        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", method = RequestMethod.POST)
    public ModelAndView languages(final Model model, @ModelAttribute Language language){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        adminService.saveLanguage(language);
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.GET)
    public ModelAndView races(final Model model){
        ModelAndView mav = new ModelAndView(RACE_ENTRY);
        mav.addObject("race", new RaceForm());
        mav.addObject("races", adminService.findAllRaces());
        mav.addObject("languages", adminService.findAllLanguages());
        mav.addObject("racialTraits", adminService.findAllTraits());
        mav.addObject("subraces", adminService.findAllSubraces());
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.POST)
    public ModelAndView races(final Model model, @ModelAttribute RaceForm race){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        RaceConverter raceConverter = new RaceConverter();
        if(null != race && null != race.getId()) {
            adminService.saveRace(raceConverter.convert(race));
        }else{
            mav.addObject(raceConverter.convert(adminService.findRace(race.getId())));
        }
        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", method = RequestMethod.GET)
    public ModelAndView subraces(final Model model){
        ModelAndView mav = new ModelAndView(SUBRACE_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/db-entry/equipment", method = RequestMethod.GET)
    public ModelAndView equipment(final Model model){
        ModelAndView mav = new ModelAndView(EQUIPMENT_ENTRY);

        return mav;
    }

    @RequestMapping(value = "/db-entry/spells", method = RequestMethod.GET)
    public ModelAndView spells(final Model model){
        ModelAndView mav = new ModelAndView(SPELLS_ENTRY);

        return mav;
    }

}
