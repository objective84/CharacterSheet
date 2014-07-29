package com.rational.converters;

import com.rational.forms.RaceForm;
import com.rational.forms.SubraceForm;
import com.rational.model.entities.Race;
import com.rational.model.entities.Subrace;
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

    public List<RaceForm> convert(List<Race> races){
        List<RaceForm> raceForms = new ArrayList<RaceForm>();
        for(Race race : races){
            raceForms.add(convert(race));
        }
        return raceForms;
    }
    public Subrace convert(SubraceForm subraceForm){
        Subrace subrace = new Subrace();

        subrace.setId(subraceForm.getId());
        subrace.setName(subraceForm.getName());
        subrace.setDescription(subraceForm.getDescription());
        subrace.setParentRace(adminService.findRace(subraceForm.getParentRace()));
//        race.setTraits(raceForm.getTraits());
//        race.setSubraces(raceForm.getSubraces());
        return subrace;
    }

    public SubraceForm convert(Subrace subrace){
        SubraceForm subraceForm = new SubraceForm();
        subraceForm.setId(subrace.getId());
        subraceForm.setName(subrace.getName());
        subraceForm.setDescription(subrace.getDescription());
        subraceForm.setParentRace(subrace.getParentRace().getId());
//        raceForm.setTraits(race.getTraits());
//        raceForm.setSubraces(race.getSubraces());
        return subraceForm;
    }



}
