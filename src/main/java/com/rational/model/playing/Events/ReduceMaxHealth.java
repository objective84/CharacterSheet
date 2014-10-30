package com.rational.model.playing.Events;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;

public class ReduceMaxHealth extends Event {

    public ReduceMaxHealth(int amt){
        super.setEffectAmt(amt);
    }

    public void reduceCharacterMaxHealth(CharacterModel character){
        for(TraitModel trait : character.getTraits()){
            trait.traitInterrupt(character, this);
        }
        character.setMaxHealthReduction(character.getMaxHealthReduction() + this.getEffectAmt());
    }
}
