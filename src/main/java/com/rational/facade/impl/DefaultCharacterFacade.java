package com.rational.facade.impl;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ProficiencyFacade;
import com.rational.facade.TraitFacade;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.model.equipment.EquipmentModel;
import com.rational.service.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component(value = "defaultCharacterFacade")
public class DefaultCharacterFacade implements CharacterFacade {


    @Resource(name = "defaultCharacterService")
    private CharacterService characterService;

    @Resource(name = "defaultCurrencyService")
    private CurrencyService currencyService;

    @Resource(name = "defaultEquipmentService")
    private EquipmentService equipmentService;

    @Resource(name = "defaultRaceService")
    private RaceService raceService;

    @Resource(name = "defaultClassService")
    private ClassService classService;

    @Resource(name = "defaultSpellService")
    private SpellService spellService;

    @Resource(name="defaultProficiencyFacade")
    private ProficiencyFacade proficiencyFacade;

    @Resource(name="defaultTraitFacade")
    private TraitFacade traitFacade;


    @Override
    public CharacterModel save(CharacterModel character) {
        CharacterModel characterModel = new CharacterModel();
        if(character.getId() == null){
            characterModel.setAbilities(new Abilities());
            characterModel.setCharacterAdvancement(new CharacterAdvancement(characterService.findAdvancement(1l)));
            characterModel.setCharacterDescription(new CharacterDescription());
        }else{
            characterModel = characterService.findCharacter(character.getId());
        }
        return assembleCharacter(characterService.save(characterModel));
    }

    @Override
    public List<CharacterModel> findAllCharacters() {
        return characterService.findAllCharacters();
    }

    @Override
    public CharacterModel findCharacter(String idString) {
        Long id = Long.decode(idString);
        CharacterModel characterModel = new CharacterModel();
        if(id != 0){
            characterModel = characterService.findCharacter(id);
        }else{
            characterModel.setAbilities(new Abilities());
        }
        return assembleCharacter(characterModel);
    }

    @Override
    public void deleteCharacter(String id) {
        characterService.deleteCharacter(Long.decode(id));
    }

    @Override
    public CharacterModel levelUp(CharacterModel character)
    {
        //TODO: increase health
        //TODO: add class traits
        //TODO: add spells

        return character;
    }

    @Override
    public ClassModel setCharacterClass(String characterId, String classId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        ClassModel classModel = classService.findClass(Long.decode(classId));
        character.setClazz(classModel);
        character.setCoinPurse(currencyService.getStartingWealth(classModel.getStartingWealthDie(), classModel.getStartingWealthDieAmount()));
        character.setMaxHealth(classModel.getHitDie().getMaxRoll());
        character.setCurrentHealth(character.getMaxHealth());
        character.getCharacterAdvancement().getLevels().add(classModel.getLevel(1));
        if(StringUtils.isNotEmpty(classModel.getMagicAbility())){
            SpellSlots spellSlots = new SpellSlots();
            spellSlots.setPerDayOne(classModel.getLevel(1).getFirstLevelSpellSlots());
            spellSlots.setExpendedOne(0);
            character.setSpellSlots(spellSlots);
        }
        traitFacade.applyTraits(character, classModel.getClassTraits());
        characterService.save(character);

        return classModel;
    }

    @Override
    public RaceModel setCharacterRace(String characterId, String raceId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        character.setSubrace(null);
        RaceModel race;
        if(raceId.equals("0")){
            race = null;
        }else {
            race = raceService.findRace(Long.decode(raceId));
        }
        character.setRace(race);
        traitFacade.applyTraits(character, race.getTraits());
        characterService.save(character);
        return race;
    }

    @Override
    public SubRaceModel setCharacterSubrace(String characterId, String subraceId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        if(subraceId.equals("0")){
            character.setSubrace(null);
        }else {
            SubRaceModel subrace = raceService.findSubrace(Long.decode(subraceId));
            character.setSubrace(subrace);
            traitFacade.applyTraits(character, subrace.getSubRacialTraits());
        }
        characterService.save(character);
        return character.getSubrace();
    }

    @Override
    public void setCharacterLanguages(CharacterModel character){
        Set<LanguageModel> languages =  new HashSet<LanguageModel>();
        if(null != character.getRace()) {
            languages.addAll(character.getRace().getLanguages());
        }
        character.setLanguages(languages);
    }

    @Override
    public void setCharacterProficiencies(CharacterModel character){
        Set<Proficiency> proficiencies =  character.getProficiencies();
        if(null != character.getRace()) {
            proficiencies.addAll(character.getRace().getProficiencies());
        }
        if(null != character.getSubrace()){
            proficiencies.addAll(character.getSubrace().getProficiencies());
        }
        if(null != character.getClazz()) {
            Set<Proficiency> classProficiencies =  new HashSet<Proficiency>(character.getClazz().getProficiencies());
            classProficiencies.removeAll(proficiencyFacade.getProficienciesOfType(classProficiencies, ProficiencyTypeEnum.SKILL));
            proficiencies.addAll(classProficiencies);
        }
        character.setProficiencies(proficiencies);
    }

    @Override
    public void setCharacterTraits(CharacterModel character){
        Set<TraitModel> traitModels =  new HashSet<TraitModel>();
        if(null != character) {
            if (null != character.getRace()) {
                traitModels.addAll(character.getRace().getTraits());
            }
            if (null != character.getSubrace()) {
                traitModels.addAll(character.getSubrace().getSubRacialTraits());
            }
            if (null != character.getClazz()) {
                traitModels.addAll(character.getClazz().getClassTraits());
            }
            character.setTraits(traitModels);
        }
    }

    @Override
    public void equipArmor(String characterId, String itemId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        if(itemId.equals("0")){
            character.setEquippedArmor(null);
        }else {
            character.setEquippedArmor(equipmentService.findArmor(Long.decode(itemId)));
        }
        characterService.save(character);
    }

    @Override
    public SpellModel addSpell(String characterId, String spellId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        SpellModel spell = spellService.findSpell(Long.decode(spellId));
        character.getSpellsKnown().add(spell);
        characterService.save(character);
        return spell;
    }

    @Override
    public void setAC(CharacterModel character){
        Integer ac = 0;
        if(null != character.getAbilities()) {
            Integer dexMod = character.getAbilities().getAbilityModifier(AbilityTypeEnum.Dex);
            if (character.getEquippedArmor() == null) {
                ac = 10;

            } else {
                ac = character.getEquippedArmor().getArmorClass();
                if (dexMod > character.getEquippedArmor().getMaxDexModifier()) {
                    dexMod = character.getEquippedArmor().getMaxDexModifier();
                }
            }
            ac+=dexMod;
        }
        character.setArmorClass(ac);
    }

    @Override
    public void addSkill(String characterId, String skillId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        character.getProficiencies().add(proficiencyFacade.findProficiency(Long.decode(skillId)));
        save(character);
    }

    @Override
    public void removeSkill(String characterId, String skillId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        character.getProficiencies().remove(proficiencyFacade.findProficiency(Long.decode(skillId)));
        save(character);
    }

    private void setInventoryWeight(CharacterModel character){

        Long weight = 0L;
        for(EquipmentModel equipmentModel : character.getInventory()) {
            weight += equipmentModel.getItemWeight();
        }
        character.setInventoryWeight(weight);
    }


    private void setCharacterSpeed(CharacterModel character){
        if(null == character.getRace()) return;
        Integer speed = character.getRace().getSpeed();
        setInventoryWeight(character);
        if (character.getInventoryWeight() > character.getAbilities().getAbilityScore(AbilityTypeEnum.Str) * 5) {
            if (character.getInventoryWeight() > character.getAbilities().getAbilityScore(AbilityTypeEnum.Str) * 10) {
                speed -= 20;
                //TODO: assign trait for disadvantage on attack rolls, and ability/saves for Str/Dex/Con
            } else {
                speed -= 10;
            }
            character.setEncumbered(true);
        } else {
            //TODO: remove above trait if present
        }
        character.setSpeed(speed);
    }


    @Override
    public CharacterModel assembleCharacter(CharacterModel character){

        setCharacterTraits(character);
        setCharacterLanguages(character);
        setCharacterProficiencies(character);
        setCharacterSpeed(character);
        traitFacade.processTraits(character);
        setAC(character);
        return character;
    }



}
