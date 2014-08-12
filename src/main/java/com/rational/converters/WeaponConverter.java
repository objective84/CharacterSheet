package com.rational.converters;

import com.rational.forms.Weapon;
import com.rational.model.entities.TraitModel;
import com.rational.model.equipment.WeaponModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class WeaponConverter {

    @Resource
    AdminService adminService;

    public Weapon convert(WeaponModel weaponModel) {
        Weapon weapon = new Weapon();
        weapon.setId(weaponModel.getId());
        weapon.setName(weaponModel.getName());
        weapon.setDescription(weaponModel.getDescription());
        weapon.setItemWeight(weaponModel.getItemWeight());
        weapon.setPrice(weaponModel.getPrice());
        weapon.setPriceDenomination(weaponModel.getPriceDenomination().getId());

        weapon.setWeaponGroup(weaponModel.getWeaponGroup().getId());
        weapon.setNumberOfDice(weaponModel.getNumberOfDice());
        weapon.setDamageDice(weaponModel.getDamageDice().getId());
        weapon.setMaxWeaponRange(weaponModel.getMaxWeaponRange());
        weapon.setWeaponRange(weaponModel.getWeaponRange());
        weapon.setTwoHanded(weaponModel.isTwoHanded());
        List<Long> traitIds = new ArrayList<Long>();
        for(TraitModel trait : weaponModel.getTraits()){
            traitIds.add(trait.getId());
        }
        weapon.setTraits(traitIds);

        return weapon;
    }

    public WeaponModel convert(Weapon weapon){
        WeaponModel weaponModel = new WeaponModel();

        weaponModel.setId(weapon.getId());
        weaponModel.setName(weapon.getName());
        weaponModel.setDescription(weapon.getDescription());
        weaponModel.setItemWeight(weapon.getItemWeight());
        weaponModel.setPrice(weapon.getPrice());
        weaponModel.setPriceDenomination(adminService.findCoin(weapon.getPriceDenomination()));

        weaponModel.setWeaponGroup(adminService.findWeaponGroup(weapon.getWeaponGroup()));
        weaponModel.setNumberOfDice(weapon.getNumberOfDice());
        weaponModel.setDamageDice(adminService.findDice(weapon.getDamageDice()));
        weaponModel.setMaxWeaponRange(weapon.getMaxWeaponRange());
        weaponModel.setWeaponRange(weapon.getWeaponRange());
        weaponModel.setTwoHanded(weapon.isTwoHanded());
        weaponModel.setTraits(adminService.findTraits(weapon.getTraits()));

        return weaponModel;
    }

    public List<Weapon> convertWeaponToForms(List<WeaponModel> weaponModels){
        List<Weapon> weapon = new ArrayList<Weapon>();

        for(WeaponModel weaponModel : weaponModels){
            weapon.add(convert(weaponModel));
        }

        return weapon;
    }

    public List<WeaponModel> convertWeaponToModels(List<Weapon> weaponForms){
        List<WeaponModel> weaponModels = new ArrayList<WeaponModel>();

        for(Weapon weapon : weaponForms){
            weaponModels.add(convert(weapon));
        }

        return weaponModels;
    }
}
