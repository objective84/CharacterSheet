package com.rational.service.impl;

import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.repository.*;
import com.rational.service.AdminService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultAdminService")
public class DefaultAdminService implements AdminService {

    @Resource
    LanguageRepository languageRepository;

    @Resource
    SubraceRepository subRaceRepository;

    @Resource
    TraitRepository traitRepository;

    @Resource
    RaceRepository raceRepository;

    @Resource
    ProficiencyRepository proficiencyRepository;

    @Resource
    ClassRepository classRepository;

    @Resource
    SubClassRepository subClassRepository;



    /* Proficiencies */

    @Override
    @Transactional
    public Proficiency saveProficiency(Proficiency proficiency) {
        return proficiencyRepository.save(proficiency);
    }

    @Override
    public Proficiency findProficiency(Long id) {
        return proficiencyRepository.findOne(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return proficiencyRepository.findAll();
    }


    /* Classes */

    @Override
    @Transactional
    public ClassModel saveClass(ClassModel clazz) {
        return classRepository.save(clazz);
    }

    @Override
    public ClassModel findClass(Long id) {
        return classRepository.findOne(id);
    }

    @Override
    public List<ClassModel> findAllClasses() {
        return classRepository.findAll();
    }


    /* Sub-Classes */

    @Override
    @Transactional
    public SubClassModel saveSubClass(SubClassModel subClass) {
        return subClassRepository.save(subClass);
    }

    @Override
    public SubClassModel findSubClass(Long id) {
        return subClassRepository.findOne(id);
    }

    @Override
    public List<SubClassModel> findAllSubClasses() {
        return subClassRepository.findAll();
    }


    /* Traits */

    @Override
    @Transactional
    //TODO
    public TraitModel saveTrait(TraitModel trait) {return null;}

    @Override
    //TODO
    public TraitModel findTrait(Long id) {return null;}

    @Override
    public List<TraitModel> findAllTraits() {return traitRepository.findAll();}


    /* Languages */

    @Override
    @Transactional
    public LanguageModel saveLanguage(LanguageModel language) {return languageRepository.save(language);}

    @Override
    public LanguageModel findLanguage(Long id) {
        return languageRepository.findOne(id);
    }

    @Override
    public List<LanguageModel> findAllLanguages() {
        return languageRepository.findAll();
    }


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
