package com.rational.facade;

import com.rational.model.entities.SpellModel;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface SpellFacade {

    SpellModel findSpell(String spellId);

    List<SpellModel> findSpells(String characterId);

    List<SpellModel> findAllSpells();

    Map<String, String> sortByLevel(Set<SpellModel> spells);

    Map<String, String> sortBySchool(Set<SpellModel> spells);
}
