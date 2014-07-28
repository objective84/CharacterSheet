package com.rational.service;

import com.rational.model.Proficiency;
import com.rational.model.entities.*;

import java.util.List;

public interface AdminService {

    Language saveLanguage(Language language);

    Language findLanguage(Long id);

    List<Language> findAllLanguages();


    Race saveRace(Race language);

    Race findRace(Long id);

    List<Race> findAllRaces();


    RacialTrait saveRacialTrait(RacialTrait racialTrait);

    RacialTrait findRacialTrait(Long id);

    List<RacialTrait> findAllRacialTraits();


    Subrace saveSubrace(Subrace subrace);

    Subrace findSubrace(Long id);

    List<Subrace> findAllSubraces();


    Proficiency saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    Clazz saveClass(Clazz clazz);

    Clazz findClass(Long id);

    List<Clazz> findAllClasses();


    SubClass saveSubClass(SubClass clazz);

    SubClass findSubClass(Long id);

    List<SubClass> findAllSubClasses();


}
