package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ClassFacade;
import com.rational.facade.SpellFacade;
import com.rational.forms.ResponseData;
import com.rational.model.entities.SpellModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping(value="/spell/{spellId}", method =  RequestMethod.GET)
    public SpellModel getSpellText(@PathVariable String spellId){
        return spellFacade.findSpell(spellId);
    }

    @ResponseBody
    @RequestMapping(value="/availableSpells/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getSpellsForClassLevel(@PathVariable String characterId){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        spells.setData(spellFacade.sortBySchool(new TreeSet<SpellModel>(spellFacade.findSpells(characterId))));
        return spells;
    }

    @RequestMapping(value="/add-spell/{characterId}/{spellId}", method = RequestMethod.POST)
    public SpellModel addSpell(@PathVariable String characterId,  @PathVariable String spellId){
        return characterFacade.addSpell(characterId, spellId);
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
}
