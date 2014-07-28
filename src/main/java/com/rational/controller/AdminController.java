package com.rational.controller;

import com.rational.converters.RaceConverter;
import com.rational.forms.RaceForm;
import com.rational.forms.SubraceForm;
import com.rational.model.entities.Language;
import com.rational.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

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

    private static final String REDIRECT_LANGUAGE_ENTRY = REDIRECT_PREFIX + "languages" + REDIRECT_SUFFIX;
    private static final String REDIRECT_RACE_ENTRY = REDIRECT_PREFIX + "races" + REDIRECT_SUFFIX;
    private static final String REDIRECT_SUBRACE_ENTRY = REDIRECT_PREFIX + "subraces" + REDIRECT_SUFFIX;

    @Resource
    private AdminService adminService;

    @Resource
    RaceConverter raceConverter;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView admin(){
        ModelAndView mav = new ModelAndView(ADMIN);

        return mav;
    }

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
    public ModelAndView languages(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(LANGUAGE_ENTRY);
        Language language = (Language)session.getAttribute("language");
        if(null != language && null != language.getId()){
            mav.addObject("language", language);
            session.removeAttribute("language");
        }else{
            mav.addObject(new Language());
        }
        mav.addObject("languages", adminService.findAllLanguages());
        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", params="save", method = RequestMethod.POST)
    public ModelAndView saveLanguage(final Model model, @ModelAttribute Language language){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        adminService.saveLanguage(language);
        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", method = RequestMethod.POST)
    public ModelAndView findLanguage(final Model model, @ModelAttribute Language language, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        session.setAttribute("language", adminService.findLanguage(language.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.GET)
    public ModelAndView races(final Model model, HttpSession session){
        RaceForm race = (RaceForm)session.getAttribute("race");
        ModelAndView mav = new ModelAndView(RACE_ENTRY);
        if(null != race && null != race.getId()){
            mav.addObject("race", race);
            session.removeAttribute("race");
            Map<Long, Long> languagesMap = new HashMap();
            for(Long language : race.getLanguages()){
                languagesMap.put(language, language);
            }
            mav.addObject("languagesMap", languagesMap);
        }else{
            mav.addObject("race", new RaceForm());
        }
        mav.addObject("races", adminService.findAllRaces());
        mav.addObject("languages", adminService.findAllLanguages());
        mav.addObject("racialTraits", adminService.findAllRacialTraits());
        mav.addObject("subraces", adminService.findAllSubraces());
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.POST)
    public ModelAndView findRace(final Model model, @ModelAttribute RaceForm race, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        session.setAttribute("race", raceConverter.convert(adminService.findRace(race.getId())));
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", params = "save", method = RequestMethod.POST)
    public ModelAndView saveRace(final Model model, @ModelAttribute RaceForm race, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        adminService.saveRace(raceConverter.convert(race));

        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", method = RequestMethod.GET)
    public ModelAndView subraces(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(SUBRACE_ENTRY);
        SubraceForm subrace = (SubraceForm)session.getAttribute("subrace");
        if(null != subrace && null != subrace.getId()){
            mav.addObject("subrace", subrace);
            session.removeAttribute("subrace");
        }else {
            mav.addObject("subrace", new SubraceForm());
        }
        mav.addObject("races", raceConverter.convert(adminService.findAllRaces()));
        mav.addObject("subraces", adminService.findAllSubraces());

        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", method = RequestMethod.POST)
    public ModelAndView findSubrace(final Model model, @ModelAttribute SubraceForm subrace, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUBRACE_ENTRY);
        session.setAttribute("subrace", raceConverter.convert(adminService.findSubrace(subrace.getId())));
        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", params = "save", method = RequestMethod.POST)
    public ModelAndView saveSubrace(final Model model, @ModelAttribute SubraceForm subrace, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUBRACE_ENTRY);
        adminService.saveSubrace(raceConverter.convert(subrace));

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
