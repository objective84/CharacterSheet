package com.rational.model.dm.monsters;

import com.rational.model.Dice;
import com.rational.model.entities.DamageType;

import javax.persistence.*;

/**
 * Created by Andy on 5/5/2015.
 */
@Entity(name = "monster_damage")
public class Damage {
    @Id
    @GeneratedValue
    private int id;
    @Column(name="dice_amount")
    private int diceAmount;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "damage_type_id")
    private DamageType type;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "dice_id")
    private Dice dice;
    @Column(name="damage_modifier")
    private int damageModifier;

    public int getDiceAmount() {
        return diceAmount;
    }

    public void setDiceAmount(int diceAmount) {
        this.diceAmount = diceAmount;
    }

    public DamageType getType() {
        return type;
    }

    public void setType(DamageType type) {
        this.type = type;
    }

    public Dice getDice() {
        return dice;
    }

    public void setDice(Dice dice) {
        this.dice = dice;
    }

    public int getDamageModifier() {
        return damageModifier;
    }

    public void setDamageModifier(int damageModifier) {
        this.damageModifier = damageModifier;
    }
}
