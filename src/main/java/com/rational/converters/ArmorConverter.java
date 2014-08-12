package com.rational.converters;

import com.rational.forms.Armor;
import com.rational.model.equipment.ArmorModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class ArmorConverter {

    @Resource
    AdminService adminService;

    public Armor convert(ArmorModel armorModel) {
        Armor armor = new Armor();
        armor.setId(armorModel.getId());
        armor.setName(armorModel.getName());
        armor.setDescription(armorModel.getDescription());
        armor.setArmorClass(armorModel.getArmorClass());
        armor.setArmorGroup(armorModel.getArmorGroup().getId());
        armor.setMaxDexModifier(armorModel.getMaxDexModifier());
        armor.setStealthDisadvantage(armorModel.isStealthDisadvantage());
        armor.setStrength(armorModel.getStrength());
        armor.setItemWeight(armorModel.getItemWeight());
        armor.setPrice(armorModel.getPrice());
        armor.setPriceDenomination(armorModel.getPriceDenomination().getId());

        return armor;
    }

    public ArmorModel convert(Armor armor){
        ArmorModel armorModel = new ArmorModel();
        armorModel.setId(armor.getId());
        armorModel.setName(armor.getName());
        armorModel.setDescription(armor.getDescription());
        armorModel.setArmorClass(armor.getArmorClass());
        armorModel.setArmorGroup(adminService.findArmorGroup(armor.getArmorGroup()));
        armorModel.setMaxDexModifier(armor.getMaxDexModifier());
        armorModel.setStealthDisadvantage(armor.isStealthDisadvantage());
        armorModel.setStrength(armor.getStrength());
        armorModel.setItemWeight(armor.getItemWeight());
        armorModel.setPrice(armor.getPrice());
        armorModel.setPriceDenomination(adminService.findCoin(armor.getPriceDenomination()));

        return armorModel;
    }

    public List<Armor> convertArmorToForms(List<ArmorModel> armorModels){
        List<Armor> armor = new ArrayList<Armor>();

        for(ArmorModel armorModel : armorModels){
            armor.add(convert(armorModel));
        }

        return armor;
    }

    public List<ArmorModel> convertArmorToModels(List<Armor> armorForms){
        List<ArmorModel> armorModels = new ArrayList<ArmorModel>();

        for(Armor armor : armorForms){
            armorModels.add(convert(armor));
        }

        return armorModels;
    }
}
