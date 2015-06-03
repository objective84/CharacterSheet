package com.rational.controller;

import com.rational.facade.MonsterFacade;
import com.rational.model.dm.monsters.Monster;
import com.rational.model.dm.monsters.Trait;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Andy on 5/5/2015.
 */
@Controller
@RequestMapping(value = "encounter")
public class EncounterController {

    @Resource
    MonsterFacade monsterFacade;

    @ResponseBody
    @RequestMapping(value = "monsters", method = RequestMethod.GET, produces = "application/json")
    public List<Monster> getMonsters(){
        List<Monster> monsters = monsterFacade.findAllMonsters();
        return monsters;
    }

    @RequestMapping(value="encounters")
    public String getEncountersPage(){
        return "encounters";
    }
}
