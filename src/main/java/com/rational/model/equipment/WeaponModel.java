package com.rational.model.equipment;

import com.rational.model.Dice;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/**
 * Created by awest on 7/23/14.
 */
@Entity
@DiscriminatorValue("W")
public class WeaponModel extends EquipmentModel{

    private WeaponGroup weaponGroup;
    private Integer weaponRange;

    private Dice damageDice;

    private Integer numberOfDice;
//
    public Integer getWeaponRange() {
        return weaponRange;
    }

    public void setWeaponRange(Integer weaponRange) {
        this.weaponRange = weaponRange;
    }



    @ManyToOne
    public WeaponGroup getWeaponGroup() {
        return weaponGroup;
    }

    public void setWeaponGroup(WeaponGroup weaponGroup) {
        this.weaponGroup = weaponGroup;
    }
//
    public Integer getNumberOfDice() {
        return numberOfDice;
    }

    public void setNumberOfDice(Integer numberOfDice) {
        this.numberOfDice = numberOfDice;
    }

    @ManyToOne
    public Dice getDamageDice() {
        return damageDice;
    }

    public void setDamageDice(Dice damageDice) {
        this.damageDice = damageDice;
    }
}
