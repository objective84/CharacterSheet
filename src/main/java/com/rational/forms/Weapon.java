package com.rational.forms;

public class Weapon extends Equipment{

    private Long weaponGroup;
    private Integer weaponRange;
    private Integer maxWeaponRange;
    private Long damageDice;
    private Integer numberOfDice;
    private boolean twoHanded;

    public Integer getWeaponRange() {
        return weaponRange;
    }

    public void setWeaponRange(Integer weaponRange) {
        this.weaponRange = weaponRange;
    }

    public Long getWeaponGroup() {
        return weaponGroup;
    }

    public void setWeaponGroup(Long weaponGroup) {
        this.weaponGroup = weaponGroup;
    }
    public Integer getNumberOfDice() {
        return numberOfDice;
    }

    public void setNumberOfDice(Integer numberOfDice) {
        this.numberOfDice = numberOfDice;
    }

    public Long getDamageDice() {
        return damageDice;
    }

    public void setDamageDice(Long damageDice) {
        this.damageDice = damageDice;
    }

    public Integer getMaxWeaponRange() {
        return maxWeaponRange;
    }

    public void setMaxWeaponRange(Integer maxWeaponRange) {
        this.maxWeaponRange = maxWeaponRange;
    }

    public boolean isTwoHanded() {
        return twoHanded;
    }

    public void setTwoHanded(boolean twoHanded) {
        this.twoHanded = twoHanded;
    }

}
