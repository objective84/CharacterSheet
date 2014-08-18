package com.rational.model.enums;

public enum ArmorFilterEnum {
    ARMOR("Armor"),
    ARMOR_LIGHT("Light"),
    ARMOR_MEDIUM("Medium"),
    ARMOR_HEAVY("Heavy");
    private String filterType;

    private ArmorFilterEnum(String filterType){
        this.filterType = this.filterType;
    }

    public static String[] getAllHitDieTypes(){
        return new String[]{ARMOR.filterType,
                ARMOR_LIGHT.filterType, ARMOR_MEDIUM.filterType, ARMOR_HEAVY.filterType};
    }

    public static String value(ArmorFilterEnum armorFilterEnum){
        return armorFilterEnum.filterType;
    }
}
