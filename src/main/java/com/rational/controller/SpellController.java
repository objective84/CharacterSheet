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
import java.util.Map;
import java.util.TreeSet;

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
        return mav;
    }

    @RequestMapping(value="/character-sheet/spell/{spellId}", method =  RequestMethod.GET)
    public SpellModel getSpellText(@PathVariable String spellId){
        return spellFacade.findSpell(spellId);
    }

    @ResponseBody
    @RequestMapping(value="/availableSpells/{characterId}/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getSpellsForClassLevel(@PathVariable String characterId, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(spellFacade.sortBySchool(new TreeSet<SpellModel>(spellFacade.findSpells(characterId))));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(spellFacade.sortByLevel(new TreeSet<SpellModel>(spellFacade.findSpells(characterId))));
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
    @RequestMapping(value="/character-sheet/classSpells/{classId}/{sortingType}", method = RequestMethod.GET, produces = "application/json")
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
}
