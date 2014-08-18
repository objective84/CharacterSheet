package com.rational.model.enums;

public enum WeaponFilterEnum {
    WEAPONS("Weapons"),
    WEAPON_MELEE("Melee"),
    WEAPON_RANGE("Range"),
    WEAPON_MELEE_RANGE("Melee or Range"),
    WEAPON_SIMPLE("Simple"),
    WEAPON_MARTIAL("Martial"),
    WEAPON_ONE_HANDED("One-Handed"),
    WEAPON_TWO_HANDED("Two-Handed");
    private String filterType;

    private WeaponFilterEnum(String filterType){
        this.filterType = this.filterType;
    }

    public static String[] getAllHitDieTypes(){
        return new String[]{WEAPONS.filterType, WEAPON_MELEE.filterType, WEAPON_RANGE.filterType, WEAPON_MELEE_RANGE.filterType,
                WEAPON_SIMPLE.filterType, WEAPON_MARTIAL.filterType, WEAPON_ONE_HANDED.filterType, WEAPON_TWO_HANDED.filterType};
    }

    public static String value(WeaponFilterEnum weaponFilterEnum){
        return weaponFilterEnum.filterType;
    }
}
