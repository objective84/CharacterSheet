package com.rational.facade;

import com.rational.forms.Character;

import java.util.List;

public interface CharacterFacade {

    void save(Character character);

    List<Character> findAllCharacters();

    Character findCharacter(Long id);
}
