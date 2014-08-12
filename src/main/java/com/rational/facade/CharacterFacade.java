package com.rational.facade;

import com.rational.forms.Character;
import com.rational.model.entities.CharacterModel;
import com.rational.model.exceptions.PurchaseException;

import java.util.List;
import java.util.Set;

public interface CharacterFacade {

    CharacterModel save(Character character);

    CharacterModel save(CharacterModel character);

    List<Character> findAllCharacters();

    Character findCharacter(Long id);

    Character levelUp(Character character);

    CharacterModel getCharacterModel(Long id);

    void deleteCharacter(Long aLong);

    CharacterModel purchaseGear(Long charId, Set<Long> equipmentIds) throws PurchaseException;

    CharacterModel setCharacterClass(Long characterId, Long classId);
}
