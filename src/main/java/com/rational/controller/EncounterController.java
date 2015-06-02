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
        Monster lich = new Monster();

        lich.setName("Lich");
        lich.setArmorClass(17);
        Trait rejuvenation = new Trait();
        rejuvenation.setName("Rejuvenation");
        rejuvenation.setDescription("If it has a phylactery, a destroyed lich gains a new body in 1d10 days, regaining all its hit points and becoming active again. The new body appears within 5 feet of the phylactery.");
        lich.addTrait(rejuvenation);
        monsters.add(lich);
        return monsters;
    }

    @RequestMapping(value="encounters")
    public String getEncountersPage(){
        return "encounters";
    }
}
