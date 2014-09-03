package com.rational.facade;

import com.rational.forms.Character;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.model.equipment.EquipmentModel;
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

    com.rational.model.entities.ClassModel setCharacterClass(Long characterId, Long classId);

    com.rational.model.entities.RaceModel setCharacterRace(String characterId, String raceId);

    Set<Proficiency> getProficienciesOfType(Set<Proficiency> proficiencies, ProficiencyTypeEnum type);

    com.rational.model.entities.SubRaceModel setCharacterSubrace(String characterId, String subraceId);

    SubRaceModel getCharacterSubrace(String characterId);

    List<EquipmentModel> filterEquipmentList(List<String> filters, String characterId);

    List<EquipmentModel> filterByProficiency(String characterId);

//    Abilities increaseDecreaseAbilityScore(String characterId, String type, Boolean positive);

    void equipArmor(String characterId, String itemId);

    Abilities findAbilities(String characterId);

    ClassModel getCharacterClass(String characterId);

    SpellModel addSpell(String characterId, String spellId);
}
