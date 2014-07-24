package com.rational.controller;

import com.rational.model.Character;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class CharacterController {

    private static final String REDIRECT_PREFIX = "redirect:";

    private static final String CHARACTER_LIST = "characterlist";
    private static final String CHARACTER = "playing";

    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST;
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER;

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
    public ModelAndView getCharacterList(@ModelAttribute Character character, final Model model){
        character = characterService.getCharacter(character.getId());
        ModelAndView mav = new ModelAndView(CHARACTER, "playing", characterService.getCharacter(character.getId()));
        return mav;
    }

    @RequestMapping(value="/playing", method= RequestMethod.GET)
    public String character(final Model model, @ModelAttribute Character character) {
        model.addAttribute("playing", new Character());

        return CHARACTER;
    }

    @RequestMapping(value="/playing", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute Character character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterService.save(character);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/character-sheet/ajax/{id}", method= RequestMethod.GET, consumes = "application/json", produces = "application/json")
    public Character character(@PathVariable Long id) {
        Character character;
        if(null != id){
            character = characterService.getCharacter(id);
        }else{
            character = new Character();
        }
        return character;
    }
}
