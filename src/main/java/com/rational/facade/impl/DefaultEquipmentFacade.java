package com.rational.facade.impl;

import com.rational.facade.CharacterFacade;
import com.rational.facade.EquipmentFacade;
import com.rational.model.Proficiency;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Coin;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.enums.EquipmentFilterEnum;
import com.rational.model.enums.ExchangeRateEnum;
import com.rational.model.equipment.*;
import com.rational.model.exceptions.PurchaseException;
import com.rational.service.CharacterService;
import com.rational.service.CurrencyService;
import com.rational.service.EquipmentService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component("defaultEquipmentFacade")
public class DefaultEquipmentFacade implements EquipmentFacade {

    @Resource(name = "defaultCharacterService")
    CharacterService characterService;

    @Resource(name = "defaultCharacterFacade")
    CharacterFacade characterFacade;

    @Resource(name="defaultEquipmentService")
    EquipmentService equipmentService;

    @Resource(name = "defaultCurrencyService")
    private CurrencyService currencyService;

     /* Weapons */


    @Transactional
    public WeaponModel saveWeapon(WeaponModel weapon) {
        return equipmentService.saveWeapon(weapon);
    }


    public WeaponModel findWeapon(Long id) {
        return equipmentService.findWeapon(id);
    }


    public List<WeaponModel> findAllWeapons() {
        return equipmentService.findAllWeapons();
    }


    /* Armor */


    @Transactional
    public void saveArmor(ArmorModel armor) {
        equipmentService.saveArmor(armor);
    }


    public ArmorModel findArmor(Long id) {
        return equipmentService.findArmor(id);
    }


    public List<ArmorModel> findAllArmor() {
        return equipmentService.findAllArmor();
    }


    public ArmorModel getArmorModel(Long id){
        return equipmentService.findArmor(id);
    }


    public ArmorGroup findArmorGroup(Long id) {
        return equipmentService.findArmorGroup(id);
    }


    public List<ArmorGroup> findArmorGroups() {
        return equipmentService.findAllArmorGroups();
    }


    public WeaponGroup findWeaponGroup(Long id) {
        return equipmentService.findWeaponGroup(id);
    }


    public List<WeaponGroup> findWeaponGroups() {
        return equipmentService.findAllWeaponGroups();
    }


    public List<Coin> findAllCoins() {
        return equipmentService.findAllCoins();
    }


    public Coin findCoinByName(String name){return equipmentService.findCoinByName(name);}


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


    public List<EquipmentModel> findEquipment(List<Long> equipmentIds) {
        return equipmentService.findEquipment(new HashSet<Long>(equipmentIds));
    }


    public WeaponModel findWeaponModel(Long id) {
        return equipmentService.findWeapon(id);
    }


    public EquipmentModel findEquipment(Long id) {
        return equipmentService.findEquipment(id);
    }


    public List<EquipmentModel> getAllEquipmentModels(){
        return equipmentService.findAllEquipment();
    }




    public List<EquipmentModel> filterEquipmentList(List<String> filters, String characterId){
        List<EquipmentModel> equipmentModels = new ArrayList<EquipmentModel>();
        List<EquipmentFilterEnum> filterEnums = EquipmentFilterEnum.getEnumValues(filters);
        for(EquipmentFilterEnum filter : filterEnums){
            switch (filter){
                case WEAPONS:
                    equipmentModels.addAll(equipmentService.findEquipmentOfType(WeaponModel.class));
                    break;
                case ARMOR:
                    equipmentModels.addAll(equipmentService.findEquipmentOfType(ArmorModel.class));
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


    public CharacterModel purchaseGear(Long charId, Set<Long> equipmentIds) throws PurchaseException {
        CharacterModel characterModel = characterService.findCharacter(charId);
        if(null == characterModel.getCoinPurse()){
            throw new PurchaseException(PurchaseException.NO_PURSE);
        }

        List<EquipmentModel> equipmentModels = equipmentService.findEquipment(equipmentIds);

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
        return characterFacade.assembleCharacter(characterModel);
    }


    public List<EquipmentModel> filterByProficiency(String characterId){
        List<EquipmentModel> equipmentModels = equipmentService.findAllEquipment();
        List<EquipmentModel> temp = new ArrayList<EquipmentModel>(equipmentModels);
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        characterFacade.setCharacterProficiencies(character);

        for(EquipmentModel model : temp){
            if(!hasProficiency(character, model)){
                equipmentModels.remove(model);
            }
        }

        return equipmentModels;
    }

    private Boolean hasProficiency(CharacterModel character, EquipmentModel equipment){
        for(Proficiency proficiency : equipment.getProficiencies()){
            if(character.getProficiencies().contains(proficiency)){
                return true;
            }
        }
        return false;
    }

}
