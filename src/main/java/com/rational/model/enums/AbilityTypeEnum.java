package com.rational.model.enums;

public enum AbilityTypeEnum{
    Str("Str"),
    Dex("Dex"),
    Con("Con"),
    Int("Intel"),
    Wis("Wis"),
    Cha("Cha");

    private String type;

    private AbilityTypeEnum(String type) {
        this.type = type;
    }

    public static AbilityTypeEnum getValueOf(String value){
        if(value.equals("Int")) return Int;
        return AbilityTypeEnum.valueOf(value);
    }

    @Override
    public String toString(){
        return type;
    }

    public String getType() {
        return type;
    }
}
