package com.rational.model.enums;

public enum TraitModTypeEnum {    RACE("Race"),
    AC("AC"),
    ATTACK("Attack"),
    DAMAGE("Damage"),
    ADVANTAGE("Advantage"),
    DISADVANTAGE("Disadvantage"),


    private String type;

    private TraitModTypeEnum(String type){
        this.type = type;
    }
}
