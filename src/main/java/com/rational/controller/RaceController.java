package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.RaceFacade;
import com.rational.model.entities.RaceModel;
import com.rational.model.entities.SubRaceModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class RaceController {


    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource(name = "defaultRaceFacade")
    private RaceFacade raceFacade;

    @ResponseBody
    @RequestMapping(value="/race/{characterId}/{raceId}", method = RequestMethod.GET, produces = "application/json")
    public RaceModel getCharacterRace(@PathVariable String characterId, @PathVariable String raceId){
        RaceModel raceModel = characterFacade.findCharacter(characterId).getRace();
        return raceModel;
    }

    @ResponseBody
    @RequestMapping(value="/race/{characterId}/{raceId}", method = RequestMethod.POST)
    public RaceModel setCharacterRace(@PathVariable String characterId, @PathVariable String raceId){
        RaceModel race = characterFacade.setCharacterRace(characterId, raceId);
        return race;
    }

    @ResponseBody
    @RequestMapping(value="/race/{raceId}", method = RequestMethod.GET, produces = "application/json")
    public RaceModel fetchRace(@PathVariable String raceId){
        return raceFacade.getRaceModel(raceId);
    }

    @ResponseBody
    @RequestMapping(value="/subrace/{characterId}/{subraceId}", method = RequestMethod.POST, produces = "application/json")
    public SubRaceModel setCharacterSubRace(@PathVariable String characterId, @PathVariable String subraceId){
        SubRaceModel subrace = characterFacade.setCharacterSubrace(characterId, subraceId);;
        return subrace;
    }

    @ResponseBody
    @RequestMapping(value="/subrace/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public SubRaceModel getCharacterSubRace(@PathVariable String characterId){
        SubRaceModel subrace = characterFacade.findCharacter(characterId).getSubrace();
        return subrace;
    }
}
