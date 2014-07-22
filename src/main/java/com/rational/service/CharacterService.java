package com.rational.service;

import com.rational.model.Character;

import java.util.List;

public interface CharacterService {

    Character save(Character character);

    List<Character> getCharacterList();

    Character getCharacter(Long id);
}
