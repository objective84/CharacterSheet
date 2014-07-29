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
    SubraceRepository subraceRepository;

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

    @Override
    @Transactional
    public Language saveLanguage(Language language) {
        return languageRepository.save(language);

    }

    @Override
    public List<Language> findAllLanguages() {
        return languageRepository.findAll();
    }

    @Override
    @Transactional
    public Race saveRace(Race language) {
        return raceRepository.save(language);

    }

    @Override
    public List<Race> findAllRaces() {
        return raceRepository.findAll();
    }

    @Override
    public RacialTrait saveRacialTrait(RacialTrait racialTrait) {
        //TODO
        return null;
    }

    @Override
    public RacialTrait findRacialTrait(Long id) {
        //TODO
        return null;
    }

    @Override
    public List<Subrace> findAllSubraces() {
        return subraceRepository.findAll();
    }

    @Override
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

    @Override
    public Clazz saveClass(Clazz clazz) {
        return classRepository.save(clazz);
    }

    @Override
    public Clazz findClass(Long id) {
        return classRepository.findOne(id);
    }

    @Override
    public List<Clazz> findAllClasses() {
        return classRepository.findAll();
    }

    @Override
    public SubClass saveSubClass(SubClass subClass) {
        return subClassRepository.save(subClass);
    }

    @Override
    public SubClass findSubClass(Long id) {
        return subClassRepository.findOne(id);
    }

    @Override
    public List<SubClass> findAllSubClasses() {
        return subClassRepository.findAll();
    }

    @Override
    public List<RacialTrait> findAllRacialTraits() {
        return traitRepository.findAll();
    }

    @Override
    public Language findLanguage(Long id) {
        return languageRepository.findOne(id);
    }

    @Override
    public Race findRace(Long id) {
        return raceRepository.findOne(id);
    }

    @Override
    public Subrace findSubrace(Long id) {
        return subraceRepository.findOne(id);
    }

    @Override
    public Subrace saveSubrace(Subrace subrace) {
        return subraceRepository.save(subrace);
    }


}
