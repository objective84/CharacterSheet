package com.rational.service.impl;

import com.rational.model.entities.RaceModel;
import com.rational.model.entities.SubRaceModel;
import com.rational.repository.RaceRepository;
import com.rational.repository.SubraceRepository;
import com.rational.service.RaceService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultRaceService")
public class DefaultRaceService implements RaceService {

    @Resource
    private RaceRepository raceRepository;

    @Resource
    private SubraceRepository subRaceRepository;


    /* Races */

    @Override
    @Transactional
    public RaceModel saveRace(RaceModel language) {return raceRepository.save(language);}

    @Override
    public RaceModel findRace(Long id) {
        return raceRepository.findOne(id);
    }

    @Override
    public List<RaceModel> findAllRaces() {return raceRepository.findAll();}


    /* Sub-Races */

    @Override
    @Transactional
    public SubRaceModel saveSubrace(SubRaceModel subRace) {
        return subRaceRepository.save(subRace);
    }

    @Override
    public SubRaceModel findSubrace(Long id) {
        return subRaceRepository.findOne(id);
    }

    @Override
    public List<SubRaceModel> findAllSubraces() {
        return subRaceRepository.findAll();
    }

}
