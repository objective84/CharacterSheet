package com.rational.facade;

import com.rational.forms.Clazz;
import com.rational.forms.Race;
import com.rational.forms.SubClass;
import com.rational.forms.SubRace;
import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.LanguageModel;
import com.rational.model.entities.RaceModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.WeaponModel;

import java.util.List;
import java.util.Map;

public interface AdminFacade {


    void saveLanguage(LanguageModel language);

    LanguageModel findLanguage(Long id);

    List<LanguageModel> findAllLanguages();


    void saveRace(Race race);

    Race findRace(Long id);

    List<Race> findAllRaces();


    Map<Long, Race> getRaceMap();

    void saveTrait(TraitModel trait);

    TraitModel findTrait(Long id);

    List<TraitModel> findAllTraits();

    List<TraitModel> findAllRacialTraits();

    List<TraitModel> findAllSubRacialTraits();

    List<TraitModel> findAllClassTraits();

    List<TraitModel> findAllSubClassTraits();


    void saveSubrace(SubRace subRace);

    SubRace findSubrace(Long id);

    List<SubRace> findAllSubraces();


    void saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    void saveClass(Clazz clazz);

    Clazz findClass(Long id);

    Map<Long, Clazz> getClassMap();

    List<Clazz> findAllClasses();


    void saveSubClass(SubClass subClass);

    SubClass findSubClass(Long id);

    List<SubClass> findAllSubClasses();


    ClassModel getClassModel(Long id);


    Map<Long, Proficiency> getProficienciesMap();

    RaceModel getRaceModel(Long id);

    Dice saveDice(Dice dice);

    Dice findDice(Long id);

    List<Dice> findAllDice();

    WeaponModel saveWeapon(WeaponModel weapon);

    WeaponModel findWeapon(Long id);

    List<WeaponModel> findAllWeapons();

    ArmorModel saveArmor(ArmorModel armor);

    ArmorModel findArmor(Long id);

    List<ArmorModel> findAllArmor();
}
