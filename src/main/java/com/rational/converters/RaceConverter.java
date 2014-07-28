package com.rational.converters;

import com.rational.forms.RaceForm;
import com.rational.model.entities.Race;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class RaceConverter {

    @Resource
    LanguageConverter languageConverter;

    public Race convert(RaceForm raceForm){
        Race race = new Race();

        race.setId(raceForm.getId());
        race.setRaceName(raceForm.getRaceName());
        race.setDescription(raceForm.getDescription());
        race.setSize(raceForm.getSize());
        race.setSpeed(raceForm.getSpeed());
        race.setLanguages(languageConverter.convertToEntity(raceForm.getLanguages()));
//        race.setTraits(raceForm.getTraits());
//        race.setSubraces(raceForm.getSubraces());
        return race;
    }

    public RaceForm convert(Race race){
        RaceForm raceForm = new RaceForm();
        raceForm.setId(race.getId());
        raceForm.setRaceName(race.getRaceName());
        raceForm.setDescription(race.getDescription());
        raceForm.setSize(race.getSize());
        raceForm.setSpeed(race.getSpeed());
        raceForm.setLanguages(languageConverter.convertToForm(race.getLanguages()));
//        raceForm.setTraits(race.getTraits());
//        raceForm.setSubraces(race.getSubraces());
        return raceForm;
    }
}
