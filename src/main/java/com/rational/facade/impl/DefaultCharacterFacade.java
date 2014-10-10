package com.rational.facade.impl;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ProficiencyFacade;
import com.rational.facade.TraitFacade;
import com.rational.forms.LevelUpReportData;
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
    public LevelUpReportData levelUp(String characterId, String classId)
    {
        LevelUpReportData report = new LevelUpReportData();
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        ClassModel clazz = classService.findClass(Long.decode(classId));

        increaseHealth(character, clazz, report);
        addClassLevel(character, clazz, report);
        adjustProficiencyBonus(character, report);
        characterService.save(character);

        return report;
    }

    private void increaseHealth(CharacterModel character, ClassModel clazz, LevelUpReportData report){
        Integer currentHealth = character.getMaxHealth();
        Integer maxHealth = currentHealth + clazz.getHitDie().getAverageRoll();
        maxHealth += character.getAbilities().getAbilityModifier(AbilityTypeEnum.Con);
        character.setMaxHealth(maxHealth);
        character.setCurrentHealth(maxHealth);
        report.setHealthGained(maxHealth - currentHealth);
    }

    private void addClassLevel(CharacterModel character, ClassModel clazz, LevelUpReportData report){
        int numLevels = character.getCharacterAdvancement().getLevelsOfClass(clazz);
        numLevels++;
        Level newLevel = clazz.getLevel(numLevels);
        report.setLevelNum(numLevels);
        report.setClassName(clazz.getName());
        character.getCharacterAdvancement().getLevels().add(newLevel);
        if(null != clazz.getMagicAbility()){
            addSpells(character, newLevel, report);
        }
    }

    private void addSpells(CharacterModel character, Level newLevel, LevelUpReportData report) {
        SpellSlots slots = character.getSpellSlots();
        if(newLevel.getSpellsKnown() > 0){
            report.setSpellsGained(newLevel.getSpellsKnown());
        }
        if(newLevel.getFirstLevelSpellSlots()>0){
            slots.setPerDayOne(slots.getPerDayOne() + newLevel.getFirstLevelSpellSlots());
            report.setLevelOneSpellSlotsGained(newLevel.getFirstLevelSpellSlots());
        }
        if(newLevel.getSecondLevelSpellSlots()>0){
            slots.setPerDayTwo(slots.getPerDayTwo() + newLevel.getSecondLevelSpellSlots());
            report.setLevelTwoSpellSlotsGained(newLevel.getSecondLevelSpellSlots());
        }
        if(newLevel.getThirdLevelSpellSlots()>0){
            slots.setPerDayThree(slots.getPerDayThree() + newLevel.getThirdLevelSpellSlots());
            report.setLevelThreeSpellSlotsGained(newLevel.getThirdLevelSpellSlots());
        }
        if(newLevel.getFourthLevelSpellSlots()>0){
            slots.setPerDayFour(slots.getPerDayFour() + newLevel.getThirdLevelSpellSlots());
            report.setLevelFourSpellSlotsGained(newLevel.getFourthLevelSpellSlots());
        }
        if(newLevel.getFifthLevelSpellSlots()>0){
            slots.setPerDayFive(slots.getPerDayFive()+ newLevel.getFifthLevelSpellSlots());
            report.setLevelFiveSpellSlotsGained(newLevel.getFifthLevelSpellSlots());
        }
        if(newLevel.getSixthLevelSpellSlots()>0){
            slots.setPerDaySix(slots.getPerDaySix() + newLevel.getSixthLevelSpellSlots());
            report.setLevelSixSpellSlotsGained(newLevel.getSixthLevelSpellSlots());
        }
        if(newLevel.getSeventhLevelSpellSlots()>0){
            slots.setPerDaySeven(slots.getPerDaySeven() + newLevel.getSeventhLevelSpellSlots());
            report.setLevelSevenSpellSlotsGained(newLevel.getSeventhLevelSpellSlots());
        }
        if(newLevel.getEighthLevelSpellSlots()>0){
            slots.setPerDayEight(slots.getPerDayEight() + newLevel.getEighthLevelSpellSlots());
            report.setLevelEightSpellSlotsGained(newLevel.getEighthLevelSpellSlots());
        }
        if(newLevel.getNinthLevelSpellSlots()>0){
            slots.setPerDayNine(slots.getPerDayNine() + newLevel.getNinthLevelSpellSlots());
            report.setLevelNineSpellSlotsGained(newLevel.getNinthLevelSpellSlots());
        }
    }

    private void adjustProficiencyBonus(CharacterModel character, LevelUpReportData report){
        int totalLevel = character.getCharacterAdvancement().getCombinedLevel();
        int bonus = 0;
        if(totalLevel<=4){
            bonus = 2;
        }else if(totalLevel <= 8){
            bonus = 3;
        }else if(totalLevel <= 12){
            bonus = 4;
        }else if(totalLevel <= 16){
            bonus = 5;
        }else if(totalLevel <= 20){
            bonus = 6;
        }
        if(character.getCharacterAdvancement().getProficiencyBonus() != bonus) {
            character.getCharacterAdvancement().setProficiencyBonus(bonus);
            report.setProficiencyBonusIncrease(bonus);
        }
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
