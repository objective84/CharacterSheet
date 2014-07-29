package com.rational.model.enums;

public enum ProficiencyTypeEnum {
    SKILL("Skill"),
    ITEM("Item"),
    TOOL("Tool"),
    WEAPON("Weapon"),
    ARMOR("Armor"),
    SHIELD("Shield"),
    SAVING_THROW("Saving Throw");

    private String type;

    private ProficiencyTypeEnum(String type){
        this.type = type;
    }
}
