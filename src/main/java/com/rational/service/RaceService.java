package com.rational.service;

import com.rational.model.entities.*;

import java.util.List;

public interface RaceService {



    RaceModel saveRace(RaceModel language);

    RaceModel findRace(Long id);

    List<RaceModel> findAllRaces();


    SubRaceModel saveSubrace(SubRaceModel subRace);

    SubRaceModel findSubrace(Long id);

    List<SubRaceModel> findAllSubraces();
}
