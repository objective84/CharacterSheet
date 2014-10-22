package com.rational.service;

import com.rational.model.entities.CharacterAdvancement;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Feat;

import java.util.List;

public interface CharacterService {

    CharacterModel save(CharacterModel character);

    List<CharacterModel> findAllCharacters();

    CharacterModel findCharacter(Long id);

    void deleteCharacter(Long id);

    CharacterAdvancement saveAdvancement(CharacterAdvancement advancement);

    CharacterAdvancement findAdvancement(Long id);

    List<Feat> findAllFeats();

    Feat findFeat(Long featId);
}
