package com.rational.model.enums;

public enum WeaponGroupEnum {
    ONE_HANDED("One-Handed"),
    TWO_HANDED("Two-Handed");

    private String type;

    private WeaponGroupEnum(String type){
        this.type = type;
    }
}
