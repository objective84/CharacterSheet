package com.rational.facade.impl;

import com.rational.facade.EquipmentFacade;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Coin;
import com.rational.model.equipment.*;
import com.rational.service.CharacterService;
import com.rational.service.EquipmentService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Component("defaultEquipmentFacade")
public class DefaultEquipmentFacade implements EquipmentFacade {

    @Resource(name = "defaultCharacterService")
    CharacterService characterService;

    @Resource(name="defaultEquipmentService")
    EquipmentService equipmentService;

     /* Weapons */

    @Override
    @Transactional
    public WeaponModel saveWeapon(WeaponModel weapon) {
        return equipmentService.saveWeapon(weapon);
    }

    @Override
    public WeaponModel findWeapon(Long id) {
        return equipmentService.findWeapon(id);
    }

    @Override
    public List<WeaponModel> findAllWeapons() {
        return equipmentService.findAllWeapons();
    }


    /* Armor */

    @Override
    @Transactional
    public void saveArmor(ArmorModel armor) {
        equipmentService.saveArmor(armor);
    }

    @Override
    public ArmorModel findArmor(Long id) {
        return equipmentService.findArmor(id);
    }

    @Override
    public List<ArmorModel> findAllArmor() {
        return equipmentService.findAllArmor();
    }

    @Override
    public ArmorModel getArmorModel(Long id){
        return equipmentService.findArmor(id);
    }

    @Override
    public ArmorGroup findArmorGroup(Long id) {
        return equipmentService.findArmorGroup(id);
    }

    @Override
    public List<ArmorGroup> findArmorGroups() {
        return equipmentService.findAllArmorGroups();
    }

    @Override
    public WeaponGroup findWeaponGroup(Long id) {
        return equipmentService.findWeaponGroup(id);
    }

    @Override
    public List<WeaponGroup> findWeaponGroups() {
        return equipmentService.findAllWeaponGroups();
    }

    @Override
    public List<Coin> findAllCoins() {
        return equipmentService.findAllCoins();
    }

    @Override
    public Coin findCoinByName(String name){return equipmentService.findCoinByName(name);}

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
        return equipmentService.findEquipment(new HashSet<Long>(equipmentIds));
    }

    @Override
    public WeaponModel findWeaponModel(Long id) {
        return equipmentService.findWeapon(id);
    }

    @Override
    public EquipmentModel findEquipment(Long id) {
        return equipmentService.findEquipment(id);
    }

    @Override
    public List<EquipmentModel> getAllEquipmentModels(){
        return equipmentService.findAllEquipment();
    }

}
