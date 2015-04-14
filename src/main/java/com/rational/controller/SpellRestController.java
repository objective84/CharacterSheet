package com.rational.controller;

import com.rational.facade.SpellFacade;
import com.rational.model.entities.SpellModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Set;

/**
 * Created by Andy on 4/6/2015.
 */
@Controller
@RequestMapping("spell-api")
public class SpellRestController {

    @Resource
    SpellFacade spellFacade;

    @ResponseBody
    @RequestMapping(value = "spells", method = RequestMethod.GET, produces = "application/json")
    public Set<SpellModel> getSpellsByLevel(@RequestParam(value = "level") String level){
        return spellFacade.findSpellsByLevel(level);
    }

    @ResponseBody
    @RequestMapping(value = "cantrips", method = RequestMethod.GET, produces = "application/json")
    public Set<SpellModel> getCantrip(){
        return spellFacade.findSpellsByLevel("0");
    }

    @ResponseBody
    @RequestMapping(value = "spell/{id}", method = RequestMethod.GET, produces = "application/json")
    public SpellModel getSpellById(@PathVariable String id){
        return spellFacade.findSpell(id);
    }
}
