package com.rational.model.entities.traits;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;
import com.rational.model.playing.Events.ReduceMaxHealth;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="prevent_reduced_max_health_trait")
public class PreventReducedMaxHealthTrait extends TraitModel{
    @Override
    public void processTrait(CharacterModel character) {

    }

    @Override
    public void applyTrait(CharacterModel character) {

    }

    @Override
    public void traitInterrupt(CharacterModel character, Event event) {
        if(event instanceof ReduceMaxHealth){
            event.setEffectAmt(0);
        }
    }
}
