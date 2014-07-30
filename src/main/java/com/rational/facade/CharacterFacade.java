package com.rational.facade;

import com.rational.forms.Character;
import com.rational.model.entities.CharacterModel;

import java.util.List;

public interface CharacterFacade {

    void save(Character character);

    List<Character> findAllCharacters();

    Character findCharacter(Long id);

    com.rational.model.Dice getStartingHealthForClass(Long classId);

    Character levelUp(Character character);

    CharacterModel getCharacterModel(Long id);
}
