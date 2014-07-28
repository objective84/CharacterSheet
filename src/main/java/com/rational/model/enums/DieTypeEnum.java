package com.rational.model.enums;

public enum DieTypeEnum {
    D4("d4"),
    D6("d6"),
    D8("d8"),
    D10("d10"),
    D12("d12"),
    D20("d20"),
    D100("d100");
    private String type;

    private DieTypeEnum(String type){
        this.type = type;
    }

    public static String[] getAllClasses(){
        return new String[]{D4.type, D6.type, D8.type, D10.type,
                D12.type, D20.type, D100.type};
    }
}
