package com.rational.model.enums;

public enum TraitTypeEnum {
    RACE("Race"),
    SUBRACE("SubRace"),
    CLASS("Class"),
    SUBCLASS("SubClass");

    private String type;

    private TraitTypeEnum(String type){
        this.type = type;
    }
}
