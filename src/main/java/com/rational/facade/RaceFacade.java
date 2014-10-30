package com.rational.facade;

import com.rational.model.entities.RaceModel;
import com.rational.model.entities.SubRaceModel;

import java.util.List;
import java.util.Map;

public interface RaceFacade {


    void saveRace(RaceModel race);

    RaceModel findRace(Long id);

    List<RaceModel> findAllRaces();

    Map<Long, RaceModel> getRaceMap();

    void saveSubrace(SubRaceModel subRace);

    SubRaceModel findSubrace(Long id);

    SubRaceModel findSubraceModel(Long id);

    List<SubRaceModel> findAllSubraces();

    RaceModel getRaceModel(String id);
}
