package com.rational.facade;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;

import java.util.List;

public interface TraitFacade {

    void saveTrait(TraitModel trait);

    TraitModel findTrait(Long id);

    List<TraitModel> findAllTraits();

    List<TraitModel> findAllRacialTraits();

    List<TraitModel> findAllSubRacialTraits();

    List<TraitModel> findAllClassTraits();

    List<TraitModel> findAllSubClassTraits();

    void applyTraits(CharacterModel character, List<TraitModel> classTraits);

    void processTraits(CharacterModel character);
}
