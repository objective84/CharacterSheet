package com.rational.facade;

import com.rational.model.entities.*;

import java.util.List;

public interface CharacterFacade {

    CharacterModel save(CharacterModel character);

    List<CharacterModel> findAllCharacters();

    void deleteCharacter(String id);

    CharacterModel levelUp(CharacterModel character);

    CharacterModel findCharacter(String idString);

    ClassModel setCharacterClass(String characterId, String classId);

    RaceModel setCharacterRace(String characterId, String raceId);

    SubRaceModel setCharacterSubrace(String characterId, String subraceId);

    void setCharacterLanguages(CharacterModel character);

    void setCharacterProficiencies(CharacterModel character);

    void setCharacterTraits(CharacterModel character);

    void equipArmor(String characterId, String itemId);

    SpellModel addSpell(String characterId, String spellId);

    void setAC(CharacterModel character);

    CharacterModel assembleCharacter(CharacterModel character);

    void addSkill(String characterId, String skillId);

    void removeSkill(String characterId, String skillId);
}
