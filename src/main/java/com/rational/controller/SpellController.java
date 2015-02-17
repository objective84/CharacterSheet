package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ClassFacade;
import com.rational.facade.SpellFacade;
import com.rational.forms.ResponseData;
import com.rational.forms.SpellCastData;
import com.rational.model.entities.SpellModel;
import com.rational.model.exceptions.SpellCastException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by Andy on 8/25/2014.
 */

@Controller
public class SpellController {

    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource(name = "defaultClassFacade")
    private ClassFacade classFacade;

    @Resource(name = "defaultSpellFacade")
    private SpellFacade spellFacade;

    @RequestMapping(value="/spells", method = RequestMethod.GET)
    public ModelAndView spells(final ModelAndView mav){
        mav.setViewName("spells");
        mav.addObject("spellcasters", classFacade.findAllSpellcasters());
        mav.addObject("spellSchools", Arrays.asList("Abjuration", "Conjuration", "Divination",
                "Enchantment", "Evocation", "Illusion", "Necromancy", "Transmutation"));
        mav.addObject("abilityTypes", Arrays.asList("Strength", "Dexterity", "Constitution",
                "Intelligence", "Wisdom", "Charisma"));        return mav;
    }

    @RequestMapping(value="/spell/{spellId}", method =  RequestMethod.GET)
    public SpellModel getSpellText(@PathVariable String spellId){
        return spellFacade.findSpell(spellId);
    }

    @ResponseBody
    @RequestMapping(value="/availableSpells/{characterId}/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getSpellsForClassLevel(@PathVariable String characterId, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        Set spellSet = new TreeSet<SpellModel>(spellFacade.findSpells(characterId));
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(spellFacade.sortBySchool(spellSet));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(spellFacade.sortByLevel(spellSet));
        }
        return spells;
    }

    @RequestMapping(value="/add-spell/{characterId}/{spellId}", method = RequestMethod.POST)
    public SpellModel addSpell(@PathVariable String characterId,  @PathVariable String spellId){
        return characterFacade.addSpell(characterId, spellId);
    }

    @RequestMapping(value="/learn-spells/{characterId}", method = RequestMethod.POST)
    public String learnSpells(@PathVariable String characterId, @RequestParam(value="spellIds") String[] spellIds){
        spellFacade.learnSpells(characterId, spellIds);

        return "success";
    }

    @ResponseBody
    @RequestMapping(value="/character-sheet/prepare-spell/{characterId}/{spellId}", method = RequestMethod.POST)
    public SpellModel prepareSpell(@PathVariable String characterId, @PathVariable String spellId){
        SpellModel spell = spellFacade.prepareSpell(characterId, spellId);
        return spell;
    }

    @ResponseBody
    @RequestMapping(value="/character-sheet/unprepare-spell/{characterId}/{spellId}", method = RequestMethod.POST)
    public SpellModel unPrepareSpells(@PathVariable String characterId, @PathVariable String spellId){
        SpellModel spell = spellFacade.unPrepareSpell(characterId, spellId);
        return spell;
    }


    @ResponseBody
    @RequestMapping(value="/allSpells/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getAllSpells(@PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(spellFacade.sortBySchool(new TreeSet<SpellModel>(spellFacade.findAllSpells())));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(spellFacade.sortByLevel(new TreeSet<SpellModel>(spellFacade.findAllSpells())));
        }
        return spells;
    }

    @ResponseBody
    @RequestMapping(value="/classSpells/{classId}/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getClassSpells(@PathVariable String classId, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(spellFacade.sortBySchool(new TreeSet<SpellModel>(classFacade.getClassModel(Long.decode(classId)).getSpells())));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(spellFacade.sortByLevel(new TreeSet<SpellModel>(classFacade.getClassModel(Long.decode(classId)).getSpells())));
        }
        return spells;
    }

    @ResponseBody
    @RequestMapping(value="/spell/cast/{characterId}/{spellId}", method=RequestMethod.POST, produces = "application/json")
    public ResponseData<SpellCastData> castSpell(@PathVariable String characterId,@PathVariable String spellId){
        ResponseData<SpellCastData> responseData = new ResponseData<SpellCastData>();

        try {
            responseData.setData(spellFacade.castSpell(characterId, spellId));
            responseData.setCode(ResponseData.SUCCESS_CODE);
        } catch (SpellCastException e) {
            responseData.setErrorMessage(e.getMessage());
            responseData.setCode(ResponseData.FAILURE_CODE);
        }

        return responseData;
    }

    @ResponseBody
    @RequestMapping(value="/spell/textSearch/{sortingType}", method=RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> textSearch(@RequestParam(value="text") String text, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();

        Set<SpellModel> spellSet = spellFacade.textSearch(text);

        spells.setData(sortSpells(spellSet, sortingType));

        return spells;
    }

    @ResponseBody
    @RequestMapping(value="/spell/advSearch/{sortingType}", method=RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> advancedSearch(@RequestParam Map<String, String> params, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();

        Set<SpellModel> spellSet = spellFacade.advancedSearch(params);

        spells.setData(sortSpells(spellSet, sortingType));

        return spells;
    }

    private Map<String, String> sortSpells(Set<SpellModel> spells, String sortingType){
        if(sortingType.equalsIgnoreCase("school")){
            return spellFacade.sortBySchool(spells);
        }else if(sortingType.equalsIgnoreCase("level")){
            return spellFacade.sortByLevel(spells);
        }
        return new HashMap<String, String>();
    }
}
