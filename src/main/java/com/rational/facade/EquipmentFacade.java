package com.rational.facade;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Coin;
import com.rational.model.equipment.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface EquipmentFacade {

    @Transactional
    WeaponModel saveWeapon(WeaponModel weapon);

    WeaponModel findWeapon(Long id);

    List<WeaponModel> findAllWeapons();

    @Transactional
    void saveArmor(ArmorModel armor);

    ArmorModel findArmor(Long id);

    ArmorModel getArmorModel(Long id);


    List<ArmorModel> findAllArmor();

    ArmorGroup findArmorGroup(Long id);

    List<ArmorGroup> findArmorGroups();

    WeaponGroup findWeaponGroup(Long id);

    List<WeaponGroup> findWeaponGroups();

    List<Coin> findAllCoins();

    Coin findCoinByName(String name);

    List<EquipmentModel> getOffHandFromInventory(CharacterModel character);

    List<WeaponModel> getWeaponsFromInventory(CharacterModel character);

    List<ArmorModel> getArmorFromInventory(CharacterModel character);

    List<EquipmentModel> findEquipment(List<Long> equipmentIds);

    WeaponModel findWeaponModel(Long id);

    EquipmentModel findEquipment(Long id);

    List<EquipmentModel> getAllEquipmentModels();


}
