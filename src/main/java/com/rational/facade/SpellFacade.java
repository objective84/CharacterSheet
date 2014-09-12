package com.rational.facade;

import com.rational.model.entities.SpellModel;

import java.util.List;

public interface SpellFacade {

    SpellModel findSpell(String spellId);

    List<SpellModel> findSpells(String characterId);

    List<SpellModel> findAllSpells();
}
