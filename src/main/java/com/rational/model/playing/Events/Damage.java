package com.rational.model.playing.Events;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.DamageType;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;

public class Damage extends Event {

    private DamageType damageType;

    public Damage(int amt){
        this.setEffectAmt(amt);
    }

    public DamageType getDamageType() {
        return damageType;
    }

    public void setDamageType(DamageType damageType) {
        this.damageType = damageType;
    }

    public void applyDamage(CharacterModel character){
        for(TraitModel trait : character.getTraits()){
            trait.traitInterrupt(character, this);
        }
        character.setCurrentHealth(character.getCurrentHealth()- this.getEffectAmt());
    }
}
