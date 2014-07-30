package com.rational.controller;

import com.rational.facade.AdminFacade;
import com.rational.forms.Clazz;
import com.rational.forms.Race;
import com.rational.forms.SubClass;
import com.rational.forms.SubRace;
import com.rational.model.Proficiency;
import com.rational.model.entities.LanguageModel;
import com.rational.model.enums.DieTypeEnum;
import com.rational.model.enums.ProficiencyTypeEnum;
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
    private static final String SUB_CLASS_ENTRY = "admin/db-entry/subclasses";
    private static final String LANGUAGE_ENTRY = "admin/db-entry/languages";
    private static final String RACE_ENTRY = "admin/db-entry/races";
    private static final String SUBRACE_ENTRY = "admin/db-entry/subraces";
    private static final String EQUIPMENT_ENTRY = "admin/db-entry/equipment";
    private static final String SPELLS_ENTRY = "admin/db-entry/spells";
    private static final String PROFICIENCY_ENTRY = "admin/db-entry/proficiencies";


    private static final String REDIRECT_LANGUAGE_ENTRY = REDIRECT_PREFIX + "languages" + REDIRECT_SUFFIX;
    private static final String REDIRECT_RACE_ENTRY = REDIRECT_PREFIX + "races" + REDIRECT_SUFFIX;
    private static final String REDIRECT_SUBRACE_ENTRY = REDIRECT_PREFIX + "subraces" + REDIRECT_SUFFIX;
    private static final String REDIRECT_PROFICIENCY_ENTRY = REDIRECT_PREFIX + "proficiencies" + REDIRECT_SUFFIX;
    private static final String REDIRECT_CLASS_ENTRY = REDIRECT_PREFIX + "classes" + REDIRECT_SUFFIX;
    private static final String REDIRECT_SUB_CLASS_ENTRY = REDIRECT_PREFIX + "subclasses" + REDIRECT_SUFFIX;

    @Resource(name = "defaultAdminFacade")
    private AdminFacade adminFacade;

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

    @RequestMapping(value = "/db-entry/languages", method = RequestMethod.GET)
    public ModelAndView languages(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(LANGUAGE_ENTRY);
        LanguageModel language = (LanguageModel)session.getAttribute("language");

        if(null != language && null != language.getId()){
            mav.addObject("language", language);
            session.removeAttribute("language");
        }else{
            mav.addObject("language", new LanguageModel());
        }
        mav.addObject("languages", adminFacade.findAllLanguages());
        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", params="save", method = RequestMethod.POST)
    public ModelAndView saveLanguage(final Model model, @ModelAttribute LanguageModel language){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        adminFacade.saveLanguage(language);
        return mav;
    }

    @RequestMapping(value = "/db-entry/languages", method = RequestMethod.POST)
    public ModelAndView findLanguage(final Model model, @ModelAttribute LanguageModel language, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_LANGUAGE_ENTRY);
        session.setAttribute("language", adminFacade.findLanguage(language.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.GET)
    public ModelAndView races(final Model model, HttpSession session){
        Race race = (Race)session.getAttribute("race");
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
            mav.addObject("race", new Race());
        }

        mav.addObject("races", adminFacade.findAllRaces());
        mav.addObject("languages", adminFacade.findAllLanguages());
        mav.addObject("racialTraits", adminFacade.findAllRacialTraits());
        mav.addObject("subraces", adminFacade.findAllSubraces());
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", method = RequestMethod.POST)
    public ModelAndView findRace(final Model model, @ModelAttribute Race race, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        session.setAttribute("race", adminFacade.findRace(race.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/races", params = "save", method = RequestMethod.POST)
    public ModelAndView saveRace(final Model model, @ModelAttribute Race race, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_RACE_ENTRY);
        adminFacade.saveRace(race);

        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", method = RequestMethod.GET)
    public ModelAndView subRaces(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(SUBRACE_ENTRY);
        SubRace subRace = (SubRace)session.getAttribute("subrace");
        if(null != subRace && null != subRace.getId()){
            mav.addObject("subrace", subRace);
            session.removeAttribute("subrace");
        }else {
            mav.addObject("subrace", new SubRace());
        }
        mav.addObject("races", adminFacade.findAllRaces());
        mav.addObject("subraces", adminFacade.findAllSubraces());

        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", method = RequestMethod.POST)
    public ModelAndView findSubrace(final Model model, @ModelAttribute SubRace subRace, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUBRACE_ENTRY);
        session.setAttribute("subrace", adminFacade.findSubrace(subRace.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/subraces", params = "save", method = RequestMethod.POST)
    public ModelAndView saveSubrace(final Model model, @ModelAttribute SubRace subRace, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUBRACE_ENTRY);
        adminFacade.saveSubrace(subRace);

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

    @RequestMapping(value = "/db-entry/proficiencies", method = RequestMethod.GET)
    public ModelAndView proficiencies(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(PROFICIENCY_ENTRY);
        Proficiency proficiency = (Proficiency)session.getAttribute("proficiency");
        if(null != proficiency && null != proficiency.getId()){
            mav.addObject("proficiency", proficiency);
            session.removeAttribute("proficiency");
        }else {
            mav.addObject("proficiency", new Proficiency());
        }
        mav.addObject("proficiencyTypes", ProficiencyTypeEnum.values());
        mav.addObject("proficiencies", adminFacade.findAllProficiencies());

        return mav;
    }

    @RequestMapping(value = "/db-entry/proficiencies", method = RequestMethod.POST)
    public ModelAndView findProficiencies(@ModelAttribute Proficiency proficiency, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_PROFICIENCY_ENTRY);
        session.setAttribute("proficiency", adminFacade.findProficiency(proficiency.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/proficiencies", params = "save", method = RequestMethod.POST)
    public ModelAndView saveSubrace(final Model model, @ModelAttribute Proficiency proficiency, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_PROFICIENCY_ENTRY);
        adminFacade.saveProficiency(proficiency);

        return mav;
    }

    @RequestMapping(value = "/db-entry/classes", method = RequestMethod.GET)
    public ModelAndView classes(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(CLASS_ENTRY);
        Clazz clazz = (Clazz)session.getAttribute("clazz");
        if(null != clazz && null != clazz.getId()){
            mav.addObject("clazz", clazz);
            session.removeAttribute("clazz");
            Map<Long, Long> proficiencyMap = new HashMap<Long, Long>();
            for(Long proficiency : clazz.getProficiencies()){
                proficiencyMap.put(proficiency, proficiency);
            }
            mav.addObject("proficiencyMap", proficiencyMap);
        }else {
            mav.addObject("clazz", new Clazz());
        }
        mav.addObject("allClasses", adminFacade.findAllClasses());
        mav.addObject("hitDieTypes", DieTypeEnum.getAllHitDieTypes());
        mav.addObject("proficiencies", adminFacade.findAllProficiencies());


        return mav;
    }

    @RequestMapping(value = "/db-entry/classes", method = RequestMethod.POST)
    public ModelAndView findClass(@ModelAttribute Clazz clazz, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_CLASS_ENTRY);
        session.setAttribute("clazz", adminFacade.findClass(clazz.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/classes", params = "save", method = RequestMethod.POST)
    public ModelAndView saveClass(final Model model, @ModelAttribute Clazz clazz, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_CLASS_ENTRY);
        adminFacade.saveClass(clazz);

        return mav;
    }

    @RequestMapping(value = "/db-entry/subclasses", method = RequestMethod.GET)
    public ModelAndView subClasses(final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(SUB_CLASS_ENTRY);
        SubClass subClass = (SubClass)session.getAttribute("subclass");
        if(null != subClass && null != subClass.getId()){
            mav.addObject("subclass", subClass);
            session.removeAttribute("subclass");
        }else {
            mav.addObject("subclass", new SubClass());
        }
        mav.addObject("allClasses", adminFacade.findAllClasses());
        mav.addObject("proficiencies", adminFacade.findAllProficiencies());
        mav.addObject("allSubClasses", adminFacade.findAllSubClasses());


        return mav;
    }

    @RequestMapping(value = "/db-entry/subclasses", method = RequestMethod.POST)
    public ModelAndView findSubClass(@ModelAttribute SubClass subClass, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUB_CLASS_ENTRY);
        session.setAttribute("subclass", adminFacade.findSubClass(subClass.getId()));
        return mav;
    }

    @RequestMapping(value = "/db-entry/subclasses", params = "save", method = RequestMethod.POST)
    public ModelAndView saveSubClass(final Model model, @ModelAttribute SubClass subClass, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_SUB_CLASS_ENTRY);
        adminFacade.saveSubClass(subClass);

        return mav;
    }

}
