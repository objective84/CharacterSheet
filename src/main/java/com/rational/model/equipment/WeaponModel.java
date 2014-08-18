package com.rational.model.equipment;

import com.rational.model.Dice;
import com.rational.model.entities.CharacterModel;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
@Entity
@DiscriminatorValue("W")
public class WeaponModel extends EquipmentModel{

    private WeaponGroup weaponGroup;
    private Integer weaponRange;
    private Integer maxWeaponRange;
    private Dice damageDice;
    private String damageType;

    private Integer numberOfDice;
    private boolean twoHanded;

    public Integer getWeaponRange() {
        return weaponRange;
    }

    public void setWeaponRange(Integer weaponRange) {
        this.weaponRange = weaponRange;
    }

    @ManyToOne
    @JsonManagedReference
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
    @JsonManagedReference
    public Dice getDamageDice() {
        return damageDice;
    }

    public void setDamageDice(Dice damageDice) {
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

    public String getDamageType() {
        return damageType;
    }

    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }
}
