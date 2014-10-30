package com.rational.model.entities.traits;

import com.rational.facade.SpellFacade;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.SpellModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Entity
@Component
@Table(name="add_spell_trait")
public class AddSpellTrait extends TraitModel{


    @Resource(name="defaultSpellFacade")
    @Transient private SpellFacade spellFacade;

    @ManyToMany
    @JoinTable(name="add_spell_trait_spells", joinColumns = @JoinColumn(name="trait_id"), inverseJoinColumns = @JoinColumn(name="spell_id"))
    private List<SpellModel> spells = new ArrayList<SpellModel>();

    private int numSpellsLearned;

    @Override
    public void processTrait(CharacterModel character) {

    }

    @Override
    public void applyTrait(CharacterModel character) {
        if(spells.size() > numSpellsLearned){
            character.setSpellsToChoose(spellFacade.sortByLevel(new HashSet<SpellModel>(spells)));
            character.setNumSpellsToChoose(numSpellsLearned);
        }else{
            character.getSpellsKnown().addAll(spells);
        }
    }

    @Override
    public void traitInterrupt(CharacterModel character, Event event) {

    }

    public List<SpellModel> getSpells() {
        return spells;
    }

    public void setSpells(List<SpellModel> spells) {
        this.spells = spells;
    }

    public int getNumSpellsLearned() {
        return numSpellsLearned;
    }

    public void setNumSpellsLearned(int numSpellsLearned) {
        this.numSpellsLearned = numSpellsLearned;
    }
}
