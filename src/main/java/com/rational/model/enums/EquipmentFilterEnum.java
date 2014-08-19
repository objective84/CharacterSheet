package com.rational.model.enums;

import java.util.ArrayList;
import java.util.List;

public enum EquipmentFilterEnum {
    BY_PROFICIENCY("Show proficient equipment only"),
    WEAPONS("Weapons only"),
    WEAPON_MELEE("Melee"),
    WEAPON_RANGE("Range"),
    WEAPON_MELEE_RANGE("Melee or Range"),
    WEAPON_SIMPLE("Simple"),
    WEAPON_MARTIAL("Martial"),
    WEAPON_ONE_HANDED("One-Handed"),
    WEAPON_TWO_HANDED("Two-Handed"),
    ARMOR("Armor only"),
    ARMOR_LIGHT("Light"),
    ARMOR_MEDIUM("Medium"),
    ARMOR_HEAVY("Heavy");
    private String filterType;

    private EquipmentFilterEnum(String filterType){
        this.filterType = filterType;
    }

    public String getFilterType(){
        return filterType;
    }

    public static String[] getAllFilters(){
        return new String[]{BY_PROFICIENCY.filterType, WEAPONS.filterType, WEAPON_MELEE.filterType, WEAPON_RANGE.filterType, WEAPON_MELEE_RANGE.filterType,
                WEAPON_SIMPLE.filterType, WEAPON_MARTIAL.filterType, WEAPON_ONE_HANDED.filterType, WEAPON_TWO_HANDED.filterType, ARMOR.filterType,
                ARMOR_LIGHT.filterType, ARMOR_MEDIUM.filterType, ARMOR_HEAVY.filterType};
    }

    public static String[] getWeaponFilters(){
        return new String[]{WEAPONS.filterType, WEAPON_MELEE.filterType, WEAPON_RANGE.filterType, WEAPON_MELEE_RANGE.filterType,
                WEAPON_SIMPLE.filterType, WEAPON_MARTIAL.filterType, WEAPON_ONE_HANDED.filterType, WEAPON_TWO_HANDED.filterType};
    }

    public static String[] getArmorFilters(){
        return new String[]{ ARMOR.filterType, ARMOR_LIGHT.filterType, ARMOR_MEDIUM.filterType, ARMOR_HEAVY.filterType};
    }

    public static Object getMiscFilters() {
        return new String[]{BY_PROFICIENCY.filterType};
    }

    public static List<EquipmentFilterEnum> getEnumValues(List<String> strings){
        List<EquipmentFilterEnum> filters = new ArrayList<EquipmentFilterEnum>();
        for(String string : strings){
            filters.add(EquipmentFilterEnum.valueOf(string));
        }
        return filters;
    }

    @Override
    public String toString(){
        return filterType;
    }

}
