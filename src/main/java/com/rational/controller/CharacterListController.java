package com.rational.controller;

import com.rational.facade.CharacterFacade;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping(value="/character-list")
public class CharacterListController {
    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";
    private static final String CHARACTER = "character";
    private static final String CHARACTER_LIST = "character-list";
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER + REDIRECT_SUFFIX;
    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST + REDIRECT_SUFFIX;

    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @RequestMapping
    public ModelAndView getCharacterList(final ModelAndView mav){
        mav.setViewName(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        return mav;
    }

    @RequestMapping(value="/{characterId}")
    public String character(@PathVariable String characterId) {
        return REDIRECT_CHARACTER + "/" + characterId;
    }

    @RequestMapping(value="/{characterId}/delete")
    public String deleteCharacter(@PathVariable String characterId){
        characterFacade.deleteCharacter(characterId);
        return REDIRECT_CHARACTER_LIST;
    }
}
