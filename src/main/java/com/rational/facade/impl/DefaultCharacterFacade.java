package com.rational.facade.impl;

import com.rational.converters.CharacterConverter;
import com.rational.converters.EquipmentConverter;
import com.rational.facade.AdminFacade;
import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.*;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import com.rational.model.exceptions.PurchaseException;
import com.rational.service.AdminService;
import com.rational.service.CharacterService;
import com.rational.service.CurrencyService;
import com.rational.service.DiceService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component(value = "defaultCharacterFacade")
public class DefaultCharacterFacade implements CharacterFacade {

    @Resource
    AdminFacade adminFacade;

    @Resource
    AdminService adminService;

    @Resource
    CharacterService characterService;

    @Resource
    CharacterConverter characterConverter;

    @Resource
    EquipmentConverter equipmentConverter;

    @Resource
    CurrencyService currencyService;

    @Resource
    DiceService diceService;

    @Override
    public CharacterModel save(Character character) {
        CharacterModel characterModel = new CharacterModel();
        if(character.getId() == null){
            characterModel.setAbilities(new Abilities(8,8,8,8,8,8));
        }else{
            characterModel = characterService.findCharacter(character.getId());
        }
        return assembleCharacter(characterService.save(characterModel));
    }

    @Override
    public CharacterModel save(CharacterModel character) {
        return assembleCharacter(characterService.save(character));
    }

    @Override
    public List<Character> findAllCharacters() {
        return characterConverter.convertToForms(characterService.findAllCharacters());
    }

    @Override
    public Character findCharacter(Long id) {
        return characterConverter.convert(characterService.findCharacter(id));
    }

    @Override
    public Character levelUp(Character character)
    {
        //TODO: increase health
        //TODO: add class traits
        //TODO: add spells

        return character;
    }

    @Override
    public CharacterModel getCharacterModel(Long id) {
        CharacterModel characterModel = new CharacterModel();
        if(id != 0){
            characterModel = characterService.findCharacter(id);
        }else{
            characterModel.setAbilities(new Abilities(8,8,8,8,8,8));
        }
        return assembleCharacter(characterModel);
    }

    @Override
    public void deleteCharacter(Long aLong) {
        characterService.deleteCharacter(aLong);
    }

    @Override
    public CharacterModel purchaseGear(Long charId, Set<Long> equipmentIds) throws PurchaseException {
        CharacterModel characterModel = characterService.findCharacter(charId);
        if(null == characterModel.getCoinPurse()){
            throw new PurchaseException(PurchaseException.NO_PURSE);
        }

        List<EquipmentModel> equipmentModels = equipmentConverter.convertToModels(equipmentIds);

        BigDecimal totalCost = BigDecimal.ZERO;
        for(EquipmentModel equipmentModel : equipmentModels){
            if(!CoinTypeEnum.PLATINUM.equals(equipmentModel.getPriceDenomination().getCoinType())) {
                BigDecimal exchange = ExchangeRateEnum.getExchangeRate(
                        equipmentModel.getPriceDenomination().getCoinType(), CoinTypeEnum.PLATINUM);
                totalCost = totalCost.add(BigDecimal.valueOf(equipmentModel.getPrice()).divide(exchange).setScale(2, RoundingMode.HALF_UP));
            }else{
                totalCost = totalCost.add(BigDecimal.valueOf(equipmentModel.getPrice()));
            }
        }

        BigDecimal change = currencyService.getTotalPurseValueInPlatinum(characterModel.getCoinPurse()).subtract(totalCost);

        if(change.compareTo(BigDecimal.ZERO) <= 0){
            throw new PurchaseException(PurchaseException.NOT_ENOUGH_COIN);
        }

        characterModel.setCoinPurse(currencyService.convertTotal(change));
        characterModel.setInventory(equipmentModels);
        characterModel = characterService.save(characterModel);
        return assembleCharacter(characterModel);
    }

    @Override
    public ClassModel setCharacterClass(Long characterId, Long classId) {
        CharacterModel character = characterService.findCharacter(characterId);
        ClassModel classModel = adminService.findClass(classId);
        character.setClazz(classModel);
        character.setCoinPurse(currencyService.getStartingWealth(classModel.getStartingWealthDie(), classModel.getStartingWealthDieAmount()));
        character.setMaxHealth(classModel.getHitDie().getMaxRoll());
        character.setCurrentHealth(character.getMaxHealth());
        characterService.save(character);

        return classModel;
    }

    @Override
    public RaceModel setCharacterRace(String characterId, String raceId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        character.setSubrace(null);
        RaceModel race;
        if(raceId == "0"){
            race = null;
        }else {
            race = adminService.findRace(Long.decode(raceId));
        }
        character.setRace(race);
        characterService.save(character);
        return race;
    }

    @Override
    public Set<Proficiency> getProficienciesOfType(Set<Proficiency> proficiencies, ProficiencyTypeEnum type){
        Set<Proficiency> proficiencyList = new HashSet<Proficiency>();
        for(Proficiency proficiency : proficiencies){
            if(proficiency.getProficiencyType().equals(type)){
                proficiencyList.add(proficiency);
            }
        }
        return proficiencyList;
    }

    @Override
    public SubRaceModel setCharacterSubrace(String characterId, String subraceId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        if(subraceId == "0"){
            character.setSubrace(null);
        }else {
            SubRaceModel subrace = adminService.findSubrace(Long.decode(subraceId));
            character.setSubrace(subrace);
        }
        characterService.save(character);
        return character.getSubrace();
    }

    @Override
    public SubRaceModel getCharacterSubrace(String characterId){
        return characterService.findCharacter(Long.valueOf(characterId)).getSubrace();
    }

    private void setCharacterLanguages(CharacterModel character){
        Set<LanguageModel> languages =  new HashSet<LanguageModel>();
        if(null != character.getRace()) {
            languages.addAll(character.getRace().getLanguages());
        }
        character.setLanguages(languages);
    }

    private void setCharacterProficiencies(CharacterModel character){
        Set<Proficiency> proficiencies =  new HashSet<Proficiency>();
        if(null != character.getRace()) {
            proficiencies.addAll(character.getRace().getProficiencies());
        }
        if(null != character.getSubrace()){
            proficiencies.addAll(character.getSubrace().getProficiencies());
        }
        if(null != character.getClazz()) {
            proficiencies.addAll(character.getClazz().getProficiencies());
            proficiencies.removeAll(getProficienciesOfType(proficiencies, ProficiencyTypeEnum.SKILL));
        }
        character.setProficiencies(proficiencies);
    }

    private void setCharacterTraits(CharacterModel character){
        Set<TraitModel> traitModels =  new HashSet<TraitModel>();
        if(null != character.getRace()) {
            traitModels.addAll(character.getRace().getTraits());
        }
        if(null != character.getSubrace()) {
            traitModels.addAll(character.getSubrace().getSubRacialTraits());
        }
        if(null != character.getClazz()) {
            traitModels.addAll(character.getClazz().getClassTraits());
        }
        character.setTraits(traitModels);
    }

    @Override
    public List<EquipmentModel> filterEquipmentList(List<String> filters, String characterId){
        List<EquipmentModel> equipmentModels = new ArrayList<EquipmentModel>();
        List<EquipmentFilterEnum> filterEnums = EquipmentFilterEnum.getEnumValues(filters);
        for(EquipmentFilterEnum filter : filterEnums){
            switch (filter){
                case WEAPONS:
                    equipmentModels.addAll(adminService.findEquipmentOfType(WeaponModel.class));
                    break;
                case ARMOR:
                    equipmentModels.addAll(adminService.findEquipmentOfType(ArmorModel.class));
                    break;
                case BY_PROFICIENCY:
                    continue;
            }
        }

//        if(filterEnums.contains(EquipmentFilterEnum.BY_PROFICIENCY)){
//            filterByProficiency(characterId, equipmentModels);
//        }

        return equipmentModels;
    }

    @Override
    public List<EquipmentModel> filterByProficiency(String characterId){
        List<EquipmentModel> equipmentModels = adminService.findAllEquipment();
        List<EquipmentModel> temp = new ArrayList<EquipmentModel>(equipmentModels);
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        setCharacterProficiencies(character);

        for(EquipmentModel model : temp){
            if(!hasProficiency(character, model)){
                equipmentModels.remove(model);
            }
        }

        return equipmentModels;
    }

    @Override
    public void equipArmor(String characterId, String itemId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        if(itemId.equals("0")){
            character.setEquippedArmor(null);
        }else {
            character.setEquippedArmor(adminFacade.getArmorModel(Long.decode(itemId)));
        }
        characterService.save(character);
    }

    @Override
    public Abilities findAbilities(String id) {
        CharacterModel character = characterService.findCharacter(Long.decode(id));
        return assembleCharacter(character).getAbilities();
    }

    @Override
    public ClassModel getCharacterClass(String characterId) {
        return characterService.findCharacter(Long.decode(characterId)).getClazz();
    }

    private void setAC(CharacterModel character){
        Integer ac = 0;
        Integer dexMod = character.getAbilities().getAbilityModifier(AbilityTypeEnum.Dex);
        if(character.getEquippedArmor() == null){
            ac = 10;

        }else {
            ac = character.getEquippedArmor().getArmorClass();
            if(dexMod > character.getEquippedArmor().getMaxDexModifier()){
                dexMod = character.getEquippedArmor().getMaxDexModifier();
            }
        }
        character.setArmorClass(ac + dexMod);
    }

    private Boolean hasProficiency(CharacterModel character, EquipmentModel equipment){
        for(Proficiency proficiency : equipment.getProficiencies()){
            if(character.getProficiencies().contains(proficiency)){
                return true;
            }
        }
        return false;
    }

    private void setInventoryWeight(CharacterModel character){

        Long weight = 0L;
        for(EquipmentModel equipmentModel : character.getInventory()) {
            weight += Long.valueOf(equipmentModel.getItemWeight());
        }
        character.setInventoryWeight(weight);
    }

    private void setCharacterSpeed(CharacterModel character){
        if(null == character.getRace()) return;
        Integer speed = character.getRace().getSpeed();
        setInventoryWeight(character);
        if (character.getInventoryWeight() > character.getAbilities().getAbilityScore(AbilityTypeEnum.Str) * 5) {
            if (character.getInventoryWeight() > character.getAbilities().getAbilityScore(AbilityTypeEnum.Str) * 10) {
                speed -= 20;
                //TODO: assign trait for disadvantage on attack rolls, and ability/saves for Str/Dex/Con
            } else {
                speed -= 10;
            }
            character.setEncumbered(true);
        } else {
            //TODO: remove above trait if present
        }
        character.setSpeed(speed);
    }



    private CharacterModel assembleCharacter(CharacterModel character){

        setCharacterTraits(character);
        setCharacterLanguages(character);
        setCharacterProficiencies(character);
        setCharacterSpeed(character);
        processTraits(character);
        setAC(character);
        return character;
    }

    private void processTraits(CharacterModel character){
        for(TraitModel trait : character.getTraits()){
            trait.processTrait(character);
        }
    }

}
