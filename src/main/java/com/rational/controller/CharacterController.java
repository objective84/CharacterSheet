package com.rational.controller;

import com.rational.model.*;
import com.rational.model.Character;
import com.rational.service.CharacterService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class CharacterController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String FORWARD_PREFIX = "forward:";

    private static final String CHARACTER_LIST = "characterlist";
    private static final String CHARACTER = "character-sheet";

    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST;
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER;
    private static final String FORWARD_CHARACTER = FORWARD_PREFIX + CHARACTER;

    @Resource(name="defaultCharacterService")
    private CharacterService characterService;

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.setViewName(CHARACTER_LIST);
        mav.addObject("characters", characterService.getCharacterList());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute Character character, final Model model, HttpSession session){
        session.setAttribute("character", character);
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER, "character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.GET)
    public ModelAndView character(final Model model, HttpSession session) {
        Character character = (Character)session.getAttribute("character");
        if(null != character && null != character.getId()){
            character = characterService.getCharacter(character.getId());
        }else{
            character = new Character();
        }
        ModelAndView mav = new ModelAndView(CHARACTER, "character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute Character character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterService.save(character);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/character", method= RequestMethod.GET, produces = "application/json")
    public Character character(@RequestParam(value = "character") String id) {
        Character character = new Character();
        if(0 != Long.decode(id)){
            character = characterService.getCharacter(Long.decode(id));
        }else{
            character = new Character();
        }
        return character;
    }
}
