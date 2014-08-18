package com.rational.facade.impl;

import com.rational.converters.*;
import com.rational.facade.AdminFacade;
import com.rational.forms.*;
import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.equipment.*;
import com.rational.service.AdminService;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component(value = "defaultAdminFacade")
public class DefaultAdminFacade implements AdminFacade {

    @Resource
    private AdminService adminService;

    @Resource
    CharacterService characterService;

    @Resource
    RaceConverter raceConverter;

    @Resource
    SubRaceConverter subRaceConverter;

    @Resource
    ClassConverter classConverter;

    @Resource
    SubClassConverter subClassConverter;

    @Resource
    ArmorConverter armorConverter;

    @Resource
    WeaponConverter weaponConverter;

    @Override
    public void saveLanguage(LanguageModel language) {
        adminService.saveLanguage(language);
    }

    @Override
    public LanguageModel findLanguage(Long id) {
        return adminService.findLanguage(id);
    }

    @Override
    public List<LanguageModel> findAllLanguages() {
        return adminService.findAllLanguages();
    }

    @Override
    public void saveRace(Race race) {adminService.saveRace(raceConverter.convert(race));}

    @Override
    public Race findRace(Long id) {
        return raceConverter.convert(adminService.findRace(id));
    }

    @Override
    public List<Race> findAllRaces() {return raceConverter.convertToForms(adminService.findAllRaces());}

    @Override
    public Map<Long, Race> getRaceMap(){
        Map<Long, Race> raceMap = new HashMap<Long, Race>();
        List<Race> raceList = findAllRaces();
        for(Race race : raceList){
            raceMap.put(race.getId(), race);
        }

        return raceMap;
    }

    @Override
    public void saveTrait(TraitModel trait) {
        adminService.saveTrait(trait);
    }

    @Override
    public TraitModel findTrait(Long id) {
        return adminService.findTrait(id);
    }

    @Override
    public List<TraitModel> findAllTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllSubRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllClassTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllSubClassTraits() {
        return adminService.findAllTraits();
    }

    @Override
    public void saveSubrace(SubRace subRace) {adminService.saveSubrace(subRaceConverter.convert(subRace));
    }

    @Override
    public SubRace findSubrace(Long id) {
        return subRaceConverter.convert(adminService.findSubrace(id));
    }

    @Override
    public List<SubRace> findAllSubraces() {
        return subRaceConverter.convertToForms(adminService.findAllSubraces());
    }

    @Override
    public void saveProficiency(Proficiency proficiency) {adminService.saveProficiency(proficiency);}

    @Override
    public Proficiency findProficiency(Long id) {
        return adminService.findProficiency(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return adminService.findAllProficiencies();
    }

    @Override
    public void saveClass(Clazz clazz) {
        adminService.saveClass(classConverter.convert(clazz));
    }

    @Override
    public Clazz findClass(Long id) {return classConverter.convert(adminService.findClass(id));}

    @Override
    public Map<Long, Clazz> getClassMap() {
        Map<Long, Clazz> classMap = new HashMap<Long, Clazz>();
        List<Clazz> classList = findAllClasses();
        for(Clazz clazz : classList){
            classMap.put(clazz.getId(), clazz);
        }

        return classMap;
    }

    @Override
    public List<Clazz> findAllClasses(){
        return classConverter.convertToForms(adminService.findAllClasses());
    }

    @Override
    public void saveSubClass(SubClass subClass) {
        adminService.saveSubClass(subClassConverter.convert(subClass));
    }

    @Override
    public SubClass findSubClass(Long id) {return subClassConverter.convert(adminService.findSubClass(id));}

    @Override
    public List<SubClass> findAllSubClasses() {return subClassConverter.convertToForms(adminService.findAllSubClasses());}

    @Override
    public ClassModel getClassModel(Long id) {
        return adminService.findClass(id);
    }

    @Override
    public Map<Long, Proficiency> getProficienciesMap() {
        Map<Long, Proficiency> proficiencyMap = new HashMap<Long, Proficiency>();
        List<Proficiency> proficiencyList = adminService.findAllProficiencies();

        for(Proficiency proficiency : proficiencyList){
            proficiencyMap.put(proficiency.getId(), proficiency);
        }
        return proficiencyMap;
    }

    @Override
    public RaceModel getRaceModel(Long id) {
        return adminService.findRace(id);
    }

    @Override
    @Transactional
    public Dice saveDice(Dice dice) {
        return adminService.saveDice(dice);
    }

    @Override
    public Dice findDice(Long id) {
        return adminService.findDice(id);
    }

    @Override
    public List<Dice> findAllDice() {
        return adminService.findAllDice();
    }


    /* Weapons */

    @Override
    @Transactional
    public void saveWeapon(Weapon weapon) {
        adminService.saveWeapon(weaponConverter.convert(weapon));
    }

    @Override
    public Weapon findWeapon(Long id) {
        return weaponConverter.convert(adminService.findWeapon(id));
    }

    @Override
    public List<Weapon> findAllWeapons() {
        return weaponConverter.convertWeaponToForms(adminService.findAllWeapons());
    }

    @Override
    public List<WeaponModel> findAllWeaponModels() {
        return adminService.findAllWeapons();
    }


    /* Armor */

    @Override
    @Transactional
    public void saveArmor(Armor armor) {
        adminService.saveArmor(armorConverter.convert(armor));
    }

    @Override
    public Armor findArmor(Long id) {
        return armorConverter.convert(adminService.findArmor(id));
    }

    @Override
    public List<Armor> findAllArmor() {
        return armorConverter.convertArmorToForms(adminService.findAllArmor());
    }

    @Override
    public ArmorModel getArmorModel(Long id){
        return adminService.findArmor(id);
    }

    @Override
    public List<ArmorModel> findAllArmorModels(){
        return adminService.findAllArmor();
    }



    @Override
    public ArmorGroup getArmorGroup(Long id) {
        return adminService.findArmorGroup(id);
    }

    @Override
    public List<ArmorGroup> getArmorGroups() {
        return adminService.findAllArmorGroups();
    }

    @Override
    public WeaponGroup getWeaponGroup(Long id) {
        return adminService.findWeaponGroup(id);
    }

    @Override
    public List<WeaponGroup> getWeaponGroups() {
        return adminService.findAllWeaponGroups();
    }

    @Override
    public Coin findAllArmor(Long id) {
        return adminService.findCoin(id);
    }

    @Override
    public List<Coin> findAllCoins() {
        return adminService.findAllCoins();
    }

    @Override
    public Coin findCoinByName(String name){return adminService.findCoinByName(name);}

    @Override
    public List<EquipmentModel> getOffHandFromInventory(CharacterModel character) {
        CharacterModel characterModel = characterService.findCharacter(character.getId());
        List<EquipmentModel> offHandItems = new ArrayList<EquipmentModel>();
        for(EquipmentModel equipmentModel: characterModel.getInventory()){
            if(equipmentModel instanceof WeaponModel){
                WeaponModel weapon = (WeaponModel)equipmentModel;
                if(!weapon.isTwoHanded()){
                    offHandItems.add(weapon);
                }
            }
        }

        return offHandItems;
    }

    @Override
    public List<WeaponModel> getWeaponsFromInventory(CharacterModel character) {
        CharacterModel characterModel = characterService.findCharacter(character.getId());
        List<WeaponModel> weapons = new ArrayList<WeaponModel>();
        for (EquipmentModel equipmentModel : characterModel.getInventory()) {
            if (equipmentModel instanceof WeaponModel) {
                weapons.add((WeaponModel) equipmentModel);
            }
        }
        return weapons;
    }


    @Override
    public List<ArmorModel> getArmorFromInventory(CharacterModel character) {
        CharacterModel characterModel = characterService.findCharacter(character.getId());
        List<ArmorModel> armor = new ArrayList<ArmorModel>();
        for (EquipmentModel equipmentModel : characterModel.getInventory()) {
            if (equipmentModel instanceof ArmorModel) {
                armor.add((ArmorModel) equipmentModel);
            }
        }
        return armor;
    }

    @Override
    public List<EquipmentModel> findEquipment(List<Long> equipmentIds) {
        return adminService.findEquipment(equipmentIds);
    }

    @Override
    public WeaponModel findWeaponModel(Long id) {
        return adminService.findWeapon(id);
    }

    @Override
    public EquipmentModel findEquipment(Long id) {
        return adminService.findEquipment(id);
    }

    @Override
    public List<EquipmentModel> getAllEquipmentModels(){
        return adminService.findAllEquipment();
    }
}
