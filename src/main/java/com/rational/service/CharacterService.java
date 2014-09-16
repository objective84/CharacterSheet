package com.rational.service;

import com.rational.model.Dice;
import com.rational.model.entities.CharacterAdvancement;
import com.rational.model.entities.CharacterModel;

import java.util.List;

public interface CharacterService {

    CharacterModel save(CharacterModel character);

    List<CharacterModel> findAllCharacters();

    CharacterModel findCharacter(Long id);

    void deleteCharacter(Long id);

    CharacterAdvancement saveAdvancement(CharacterAdvancement advancement);

    CharacterAdvancement findAdvancement(Long id);
}
