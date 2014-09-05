package com.rational.service;

import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.equipment.*;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Type;
import java.util.List;

public interface AdminService {

    List<TraitModel> findTraits(List<Long> traits);

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

    ArmorGroup findArmorGroup(Long id);

    List<ArmorGroup> findAllArmorGroups();

    WeaponGroup findWeaponGroup(Long id);

    List<WeaponGroup> findAllWeaponGroups();

    Coin findCoin(Long id);

    Coin findCoinByType(CoinTypeEnum type);

    List<Coin> findAllCoins();

    Coin findCoinByName(String name);

    List<EquipmentModel> findEquipment(List<Long> ids);

    EquipmentModel findEquipment(Long id);

    CoinPurse saveCoinPurse(CoinPurse purse);

    SpellModel saveSpell(SpellModel spell);

    SpellModel findSpell(Long id);

    List<SpellModel> findAllSpells();

    List<EquipmentModel> findEquipmentOfType(Type type);

    List<EquipmentModel> findAllEquipment();

    Abilities saveAbilities(Abilities abilities);

    Abilities findAbilities(Long aLong);

    Level findLevel(Long id, int totalLevel);

    CharacterAdvancement saveAdvancement(CharacterAdvancement advancement);

    CharacterAdvancement findAdvancement(Long id);
}
