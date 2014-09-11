package com.rational.facade;

import com.rational.forms.*;
import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.equipment.*;
import org.springframework.transaction.annotation.Transactional;

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

    SubRaceModel findSubraceModel(Long id);

    List<SubRace> findAllSubraces();


    void saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    void saveClass(Clazz clazz);

    Clazz findClass(Long id);

    Map<Long, Clazz> getClassMap();

    List<Clazz> findAllClasses();
    List<ClassModel> findAllClassModels();


    void saveSubClass(SubClass subClass);

    SubClass findSubClass(Long id);

    List<SubClass> findAllSubClasses();


    ClassModel getClassModel(Long id);


    Map<Long, Proficiency> getProficienciesMap();

    RaceModel getRaceModel(String id);

    Dice saveDice(Dice dice);

    Dice findDice(Long id);

    List<Dice> findAllDice();

    @Transactional
    void saveWeapon(Weapon weapon);

    Weapon findWeapon(Long id);

    List<Weapon> findAllWeapons();

    List<WeaponModel> findAllWeaponModels();

    @Transactional
    void saveArmor(Armor armor);

    Armor findArmor(Long id);

    List<Armor> findAllArmor();

    ArmorModel getArmorModel(Long id);


    List<ArmorModel> findAllArmorModels();

    ArmorGroup getArmorGroup(Long id);

    List<ArmorGroup> getArmorGroups();

    WeaponGroup getWeaponGroup(Long id);

    List<WeaponGroup> getWeaponGroups();

    Coin findAllArmor(Long id);

    List<Coin> findAllCoins();

    Coin findCoinByName(String name);

    List<EquipmentModel> getOffHandFromInventory(CharacterModel character);

    List<WeaponModel> getWeaponsFromInventory(CharacterModel character);

    List<ArmorModel> getArmorFromInventory(CharacterModel character);

    List<EquipmentModel> findEquipment(List<Long> equipmentIds);

    WeaponModel findWeaponModel(Long id);

    EquipmentModel findEquipment(Long id);

    List<EquipmentModel> getAllEquipmentModels();

    Abilities saveAbilities(Abilities abilities);

    Abilities findAbilities(String id);

    SpellModel findSpell(String spellId);

    List<SpellModel> findSpells(String characterId);

    List<SpellModel> findAllSpells();

    List<ClassModel> findAllSpellcasters();
}
