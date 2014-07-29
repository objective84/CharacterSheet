package com.rational.service;

import com.rational.model.Proficiency;
import com.rational.model.entities.*;

import java.util.List;

public interface AdminService {

    LanguageModel saveLanguage(LanguageModel language);

    LanguageModel findLanguage(Long id);

    List<LanguageModel> findAllLanguages();


    RaceModel saveRace(RaceModel language);

    RaceModel findRace(Long id);

    List<RaceModel> findAllRaces();


    TraitModel saveTrait(TraitModel trait);

    TraitModel findTrait(Long id);

    List<TraitModel> findAllTraits();


    SubRaceModel saveSubrace(SubRaceModel subRace);

    SubRaceModel findSubrace(Long id);

    List<SubRaceModel> findAllSubraces();


    Proficiency saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    ClassModel saveClass(ClassModel clazz);

    ClassModel findClass(Long id);

    List<ClassModel> findAllClasses();


    SubClassModel saveSubClass(SubClassModel clazz);

    SubClassModel findSubClass(Long id);

    List<SubClassModel> findAllSubClasses();


}
