package com.rational.service;

import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.WeaponModel;
import org.springframework.transaction.annotation.Transactional;

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


    @Transactional
    Dice saveDice(Dice dice);

    Dice findDice(Long id);

    List<Dice> findAllDice();

    @Transactional
    WeaponModel saveWeapon(WeaponModel weapon);

    WeaponModel findWeapon(Long id);

    List<WeaponModel> findAllWeapons();

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


    @Transactional
    ArmorModel saveArmor(ArmorModel armor);

    ArmorModel findArmor(Long id);

    List<ArmorModel> findAllArmor();
}
