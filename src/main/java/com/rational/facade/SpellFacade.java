package com.rational.facade;

import com.rational.model.entities.SpellModel;
import com.rational.model.exceptions.SpellCastException;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface SpellFacade {

    SpellModel findSpell(String spellId);

    List<SpellModel> findSpells(String characterId);

    List<SpellModel> findAllSpells();

    Map<String, String> sortByLevel(Set<SpellModel> spells);

    Map<String, String> sortBySchool(Set<SpellModel> spells);

    void learnSpells(String characterId, String[] spellIds);

    SpellModel prepareSpell(String characterId, String spellId);

    SpellModel unPrepareSpell(String characterId, String spellId);

    com.rational.forms.SpellCastData castSpell(String characterId, String spellId) throws SpellCastException;

    Set<SpellModel> textSearch(String text);

    Set<SpellModel> advancedSearch(Map<String, String> params);

    Set<SpellModel> findSpellsByLevel(String level);
}
