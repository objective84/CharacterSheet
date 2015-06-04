package com.rational.model.dm.monsters;

import com.rational.model.Dice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Andy on 5/5/2015.
 */
@Entity
public class Damage {
    @Id
    @GeneratedValue
    private int id;
    @Column(name="dice_amount")
    private int diceAmount;
    private String type;
    private String dice;
    @Column(name="damage_modifier")
    private int damageModifier;

    public int getDiceAmount() {
        return diceAmount;
    }

    public void setDiceAmount(int diceAmount) {
        this.diceAmount = diceAmount;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDice() {
        return dice;
    }

    public void setDice(String dice) {
        this.dice = dice;
    }

    public int getDamageModifier() {
        return damageModifier;
    }

    public void setDamageModifier(int damageModifier) {
        this.damageModifier = damageModifier;
    }
}
