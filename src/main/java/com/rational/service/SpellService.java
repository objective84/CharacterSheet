package com.rational.service;

import com.rational.model.entities.SpellModel;
import com.rational.model.enums.SpellSearchParam;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface SpellService {
    SpellModel saveSpell(SpellModel spell);

    SpellModel findSpell(Long id);

    List<SpellModel> findAllSpells();

    Set<SpellModel> customSearch(Map<SpellSearchParam, List<String>> params);
}

