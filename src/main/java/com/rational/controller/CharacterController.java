package com.rational.controller;

import com.rational.facade.AdminFacade;
import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.CharacterModel;
import com.rational.model.enums.AbilityTypeEnum;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CharacterController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";

    private static final String CHARACTER_LIST = "characterlist";
    private static final String CHARACTER = "character-sheet";

    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST + REDIRECT_SUFFIX;
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER + REDIRECT_SUFFIX;



    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource
    private AdminFacade adminFacade;

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        mav.addObject("classMap", adminFacade.getClassMap());
        mav.addObject("raceMap", adminFacade.getRaceMap());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute Character character, final Model model, HttpSession session){
        if(0 == character.getId()){
            session.removeAttribute("character");
            character = new Character();
        }else{
            character = characterFacade.findCharacter(character.getId());
        }
        session.setAttribute("character", character);
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER, "character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.GET)
    public ModelAndView character(final Model model, HttpSession session) {
        ModelAndView mav = new ModelAndView(CHARACTER);
        Character character= (Character)session.getAttribute("character");
        if(null == character.getId()){
            mav.addObject("create", true);
            mav.addObject("classes", adminFacade.findAllClasses());
            mav.addObject("classMap", adminFacade.getClassMap());
            mav.addObject("raceMap", adminFacade.getRaceMap());
            mav.addObject("races", adminFacade.findAllRaces());
        }else{
            CharacterModel characterModel = characterFacade.getCharacterModel(character.getId());
            mav.addObject("characterModel", characterModel);
            addProficienciesToModel(mav, characterModel.getClazz().getProficiencies());
        }
        mav.addObject("character", character);
        mav.addObject("abilityTypes", AbilityTypeEnum.values());
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute Character character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterFacade.save(character);
        return mav;
    }

    @RequestMapping(value = "/hitDice", method = RequestMethod.GET, produces = "application/json")
    public Dice getStartingHealthForClass(@RequestParam(value = "classId") String classId){
        return characterFacade.getStartingHealthForClass(Long.valueOf(classId));
    }

    @RequestMapping(value="/level-up", method = RequestMethod.GET)
    public void levelUp(@ModelAttribute Character character){
        characterFacade.levelUp(character);
    }

//    @ResponseBody
//    @RequestMapping(value="/character", method= RequestMethod.GET, produces = "application/json")
//    public Character character(@RequestParam(value = "character") String id) {
//        Character character = new Character();
//        if(0 != Long.decode(id)){
//            character = characterFacade.findCharacter(Long.decode(id));
//        }else{
//            character = new Character();
//        }
//        return character;
//    }

    private void addProficienciesToModel(ModelAndView mav, List<Proficiency> proficiencies){
        List<Proficiency> skills = new ArrayList<Proficiency>();
        List<Proficiency> tools = new ArrayList<Proficiency>();
        List<Proficiency> weapons = new ArrayList<Proficiency>();
        List<Proficiency> armor = new ArrayList<Proficiency>();
        List<Proficiency> saves = new ArrayList<Proficiency>();

        for(Proficiency proficiency : proficiencies){
            switch (proficiency.getType()){
                case SKILL:
                    skills.add(proficiency);
                    break;
                case TOOL:
                    tools.add(proficiency);
                    break;
                case WEAPON:
                    weapons.add(proficiency);
                    break;
                case ARMOR:
                    armor.add(proficiency);
                    break;
                case SAVING_THROW:
                    saves.add(proficiency);
                    break;
            }

            mav.addObject("skillProficiencies", skills);
            mav.addObject("toolProficiencies", tools);
            mav.addObject("weaponProficiencies", weapons);
            mav.addObject("armorProficiencies", armor);
            mav.addObject("savingThrowProficiencies", saves);
        }
    }
}
