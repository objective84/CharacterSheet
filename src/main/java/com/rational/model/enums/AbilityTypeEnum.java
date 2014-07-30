package com.rational.model.enums;

public enum AbilityTypeEnum{
    Str("Str"),
    Dex("Dex"),
    Con("Con"),
    Int("Int"),
    Wis("Wis"),
    Cha("Cha");

    private String type;

    private AbilityTypeEnum(String type) {
        this.type = type;
    }

    public static String value(AbilityTypeEnum abilityType){
        return abilityType.type;
    }
}
