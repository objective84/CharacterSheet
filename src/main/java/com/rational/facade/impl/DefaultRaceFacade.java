package com.rational.facade.impl;

import com.rational.facade.RaceFacade;
import com.rational.model.entities.RaceModel;
import com.rational.model.entities.SubRaceModel;
import com.rational.service.RaceService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component("defaultRaceFacade")
public class DefaultRaceFacade implements RaceFacade {

    @Resource(name="defaultRaceService")
    private RaceService raceService;

    @Override
    public void saveRace(RaceModel race) {
        raceService.saveRace(race);}

    @Override
    public RaceModel findRace(Long id) {
        return raceService.findRace(id);
    }

    @Override
    public List<RaceModel> findAllRaces() {return raceService.findAllRaces();}


    @Override
    public Map<Long, RaceModel> getRaceMap(){
        Map<Long, RaceModel> raceMap = new HashMap<Long, RaceModel>();
        List<RaceModel> raceList = findAllRaces();
        for(RaceModel race : raceList){
            raceMap.put(race.getId(), race);
        }

        return raceMap;
    }
    @Override
    public void saveSubrace(SubRaceModel subRace) {
        raceService.saveSubrace(subRace);
    }

    @Override
    public SubRaceModel findSubrace(Long id) {
        return raceService.findSubrace(id);
    }

    @Override
    public SubRaceModel findSubraceModel(Long id) {
        return raceService.findSubrace(id);
    }

    @Override
    public List<SubRaceModel> findAllSubraces() {
        return raceService.findAllSubraces();
    }

    @Override
    public RaceModel getRaceModel(String id) {
        return raceService.findRace(Long.decode(id));
    }

}
