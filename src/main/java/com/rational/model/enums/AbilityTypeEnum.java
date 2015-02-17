package com.rational.model.enums;

import java.util.Arrays;
import java.util.List;

public enum AbilityTypeEnum{
    Str("Str"),
    Dex("Dex"),
    Con("Con"),
    Intel("Int"),
    Wis("Wis"),
    Cha("Cha");

    private String type;

    private AbilityTypeEnum(String type) {
        this.type = type;
    }

    public static AbilityTypeEnum getValueOf(String value){
        if(value.equals("Int")) return Intel;
        return AbilityTypeEnum.valueOf(value);
    }

    @Override
    public String toString(){
        return type;
    }

    public String getType() {
        return type;
    }

    public static List<String> getValues() {
        return Arrays.asList(Str.type, Dex.type, Con.type, Intel.type, Wis.type, Cha.type);
    }
}
