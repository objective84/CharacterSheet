package com.rational.service;

import com.rational.model.entities.SpellModel;

import java.util.List;

public interface SpellService {
    SpellModel saveSpell(SpellModel spell);

    SpellModel findSpell(Long id);

    List<SpellModel> findAllSpells();
}

