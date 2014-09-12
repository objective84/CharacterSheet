package com.rational.facade;

import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.exceptions.PurchaseException;

import java.util.List;
import java.util.Set;

public interface CharacterFacade {

    CharacterModel save(CharacterModel character);

    List<CharacterModel> findAllCharacters();

    CharacterModel findCharacter(Long id);

    CharacterModel levelUp(CharacterModel character);

    CharacterModel getCharacterModel(Long id);

    void deleteCharacter(Long aLong);

    CharacterModel purchaseGear(Long charId, Set<Long> equipmentIds) throws PurchaseException;

    ClassModel setCharacterClass(Long characterId, Long classId);

    RaceModel setCharacterRace(String characterId, String raceId);

    Set<Proficiency> getProficienciesOfType(Set<Proficiency> proficiencies, ProficiencyTypeEnum type);

    SubRaceModel setCharacterSubrace(String characterId, String subraceId);

    SubRaceModel getCharacterSubrace(String characterId);

    List<EquipmentModel> filterEquipmentList(List<String> filters, String characterId);

    List<EquipmentModel> filterByProficiency(String characterId);

//    Abilities increaseDecreaseAbilityScore(String characterId, String type, Boolean positive);

    void equipArmor(String characterId, String itemId);

    Abilities findAbilities(String characterId);

    ClassModel getCharacterClass(String characterId);

    SpellModel addSpell(String characterId, String spellId);
}
