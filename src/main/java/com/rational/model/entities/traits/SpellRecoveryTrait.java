package com.rational.model.entities.traits;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;
import com.rational.model.playing.Events.ShortRest;
import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity
@Table(name="spell_recovery_trait")
public class SpellRecoveryTrait extends TraitModel{

    @JsonIgnore
    @OneToOne(cascade = CascadeType.ALL)
    private ClassModel clazz;

    @Override
    public void processTrait(CharacterModel character) {

    }

    @Override
    public void applyTrait(CharacterModel character) {

    }

    @Override
    public void traitInterrupt(CharacterModel character, Event event) {
        if(event instanceof ShortRest) {
            int numClassLevels = character.getCharacterAdvancement().getLevelsOfClass(clazz);
            int recoverable = new BigDecimal(numClassLevels).divide(new BigDecimal(2), BigDecimal.ROUND_UP).intValue();
            character.getSpellSlots().setNumSpellLevelsRecoverable(recoverable);
        }
    }

    public void setClazz(ClassModel clazz) {
        this.clazz = clazz;
    }

    public ClassModel getClazz() {
        return clazz;
    }
}
