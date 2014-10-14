package com.rational.model.entities.traits;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="role_play_trait")
@DiscriminatorValue("A")
public class RolePlayTrait extends TraitModel{

    @Transient
    int testInt;

    public RolePlayTrait(){

    }


    @Override
    public void processTrait(CharacterModel character) {
        return;
    }

    @Override
    public void applyTrait(CharacterModel character) {
        return;
    }

    @Override
    public void traitInterrupt(CharacterModel character, Event event) {
        return;
    }

    public int getTestInt() {
        return testInt;
    }

    public void setTestInt(int testInt) {
        this.testInt = testInt;
    }
}
