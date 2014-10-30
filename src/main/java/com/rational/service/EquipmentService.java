package com.rational.service;

import com.rational.model.entities.Coin;
import com.rational.model.entities.CoinPurse;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.equipment.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Type;
import java.util.List;
import java.util.Set;

@Service
public interface EquipmentService {

    @Transactional
    WeaponModel saveWeapon(WeaponModel weapon);

    WeaponModel findWeapon(Long id);

    List<WeaponModel> findAllWeapons();


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

    List<EquipmentModel> findEquipment(Set<Long> ids);

    EquipmentModel findEquipment(Long id);

    CoinPurse saveCoinPurse(CoinPurse purse);


    List<EquipmentModel> findEquipmentOfType(Type type);

    List<EquipmentModel> findAllEquipment();
}
