package com.rational.converters;

import com.rational.forms.Race;
import com.rational.model.entities.RaceModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class RaceConverter {

    @Resource
    LanguageConverter languageConverter;

    @Resource
    AdminService adminService;

    public RaceModel convert(Race race){
        RaceModel raceModel = new RaceModel();

        raceModel.setId(race.getId());
        raceModel.setRaceName(race.getRaceName());
        raceModel.setDescription(race.getDescription());
        raceModel.setSize(race.getSize());
        raceModel.setSpeed(race.getSpeed());
//        raceModel.setLanguages(languageConverter.convertToModels(race.getLanguages()));
        raceModel.setTraits(adminService.findTraits(race.getTraits()));
//        raceModel.setSubraces(race.getSubraces());
        return raceModel;
    }

    public Race convert(RaceModel raceModel){
        Race race = new Race();
        race.setId(raceModel.getId());
        race.setRaceName(raceModel.getRaceName());
        race.setDescription(raceModel.getDescription());
        race.setSize(raceModel.getSize());
        race.setSpeed(raceModel.getSpeed());
//        race.setLanguages(languageConverter.convertToIds(raceModel.getLanguages()));
//        List<Long> traitIds = new ArrayList<Long>();
//        for(TraitModel trait : raceModel.getTraits()){
//            traitIds.add(trait.getId());
//        }
//        race.setTraits(traitIds);
//        race.setSubraces(raceModel.getSubraces());
        return race;
    }

    public List<Race> convertToForms(List<RaceModel> raceModels){
        List<Race> races = new ArrayList<Race>();
        for(RaceModel raceModel : raceModels){
            races.add(convert(raceModel));
        }
        return races;
    }

}
