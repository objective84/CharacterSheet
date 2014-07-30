package com.rational.converters;

import com.rational.forms.SubRace;
import com.rational.model.entities.SubRaceModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class SubRaceConverter {

    @Resource
    AdminService adminService;

    public SubRaceModel convert(SubRace subRaceForm){
        SubRaceModel subRaceModel = new SubRaceModel();

        subRaceModel.setId(subRaceForm.getId());
        subRaceModel.setName(subRaceForm.getName());
        subRaceModel.setDescription(subRaceForm.getDescription());
        subRaceModel.setParentRace(adminService.findRace(subRaceForm.getParentRace()));
//        raceModel.setTraits(race.getTraits());
//        raceModel.setSubraces(race.getSubraces());
        return subRaceModel;
    }

    public SubRace convert(SubRaceModel subRace){
        SubRace subRaceForm = new SubRace();
        subRaceForm.setId(subRace.getId());
        subRaceForm.setName(subRace.getName());
        subRaceForm.setDescription(subRace.getDescription());
        subRaceForm.setParentRace(subRace.getParentRace().getId());
//        race.setTraits(raceModel.getTraits());
//        race.setSubraces(raceModel.getSubraces());
        return subRaceForm;
    }


    public List<SubRace> convertToForms(List<SubRaceModel> subRaceModels){
        List<SubRace> subRaces = new ArrayList<SubRace>();
        for(SubRaceModel subRaceModel : subRaceModels){
            subRaces.add(convert(subRaceModel));
        }
        return subRaces;
    }
}
