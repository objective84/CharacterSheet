package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.enums.ClassEnum;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute Character character, final Model model, HttpSession session){
        if(0 == character.getId()){
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
        Character character = (Character)session.getAttribute("character");
        if(null == character){
            character = new Character();
            mav.addObject("create", true);
        }
        mav.addObject("character", character);
        mav.addObject("classes", ClassEnum.values());
        mav.addObject("abilityTypes", AbilityTypeEnum.values());
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute Character character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterFacade.save(character);
        return mav;
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
}
