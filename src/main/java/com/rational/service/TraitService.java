package com.rational.service;

import com.rational.model.entities.TraitModel;

import java.util.List;

public interface TraitService {
    List<TraitModel> findTraits(List<Long> traits);

    TraitModel saveTrait(TraitModel trait);

    TraitModel findTrait(Long id);

    List<TraitModel> findAllTraits();
}
