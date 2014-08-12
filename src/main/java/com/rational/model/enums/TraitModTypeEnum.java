package com.rational.model.enums;

public enum TraitModTypeEnum {
    AC("AC"),
    ATTACK("Attack"),
    DAMAGE("Damage"),
    ADVANTAGE("Advantage"),
    DISADVANTAGE("Disadvantage"),
    SKILL_CHECK("Skill Check"),
    SAVING_THROW("Saving Throw"),
    ABILITY_SCORE("Ability Score"),
    SPEED("Speed"),
    LANGUAGE("Language"),
    HIT_POINTS("Hit Points");

    private String type;

    private TraitModTypeEnum(String type){
        this.type = type;
    }
}
