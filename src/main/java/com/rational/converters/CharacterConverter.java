package com.rational.converters;

import com.rational.forms.Character;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.CoinPurse;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.equipment.EquipmentModel;
import com.rational.service.AdminService;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class CharacterConverter {

    @Resource
    private AdminService adminService;

    @Resource
    private LanguageConverter languageConverter;

    @Resource
    private ProficiencyConverter proficiencyConverter;

    @Resource
    private EquipmentConverter equipmentConverter;

    @Resource
    private WeaponConverter weaponConverter;

    @Resource(name="defaultCharacterService")
    private CharacterService characterService;

    public Character convert(CharacterModel characterModel) {
        Character character = new Character();

        character.setId(characterModel.getId());
        character.setName(characterModel.getName());
        if(null != characterModel.getClazz()) {
            character.setClazz(characterModel.getClazz().getId());
        }
        if(null != characterModel.getRace()){
            character.setRace(characterModel.getRace().getId());
        }
        character.setLevel(characterModel.getLevel());
        character.setMaxHealth(characterModel.getMaxHealth());
        character.setCurrentHealth(characterModel.getCurrentHealth());
        Map<AbilityTypeEnum, Integer> abilityScores = new HashMap<AbilityTypeEnum, Integer>();
        abilityScores.put(AbilityTypeEnum.Str, characterModel.getStr());
        abilityScores.put(AbilityTypeEnum.Dex, characterModel.getDex());
        abilityScores.put(AbilityTypeEnum.Con, characterModel.getCon());
        abilityScores.put(AbilityTypeEnum.Int, characterModel.getIntel());
        abilityScores.put(AbilityTypeEnum.Wis, characterModel.getWis());
        abilityScores.put(AbilityTypeEnum.Cha, characterModel.getCha());
        character.setAbilityScores(abilityScores);
        character.setSpeed(characterModel.getSpeed());

//        character.setLanguages(languageConverter.convertToIds(characterModel.getLanguages()));
//        character.setProficiencies(proficiencyConverter.convertToIds(characterModel.getProficiencies()));
        if(null != characterModel.getCoinPurse()) {
            Map<String, Integer> coinPurse = new HashMap<String, Integer>();
            coinPurse.put("copper", characterModel.getCoinPurse().getCP());
            coinPurse.put("silver", characterModel.getCoinPurse().getSP());
            coinPurse.put("electrum", characterModel.getCoinPurse().getEP());
            coinPurse.put("gold", characterModel.getCoinPurse().getGP());
            coinPurse.put("platinum", characterModel.getCoinPurse().getPP());
            character.setCoinPurse(coinPurse);
        }

        List<Long> inventory = new ArrayList<Long>();
        for(EquipmentModel equipmentModel : characterModel.getInventory()){
            inventory.add(equipmentModel.getId());
        }
        character.setInventory(inventory);

        if(null != characterModel.getEquippedArmor()) {
            character.setEquippedArmor(characterModel.getEquippedArmor().getId());
        }
        if(null != characterModel.getEquippedMainHand()) {
            character.setEquippedMainHand(characterModel.getEquippedMainHand().getId());
        }
        if(null != characterModel.getEquippedOffHand()) {
            character.setEquippedOffHand(characterModel.getEquippedOffHand().getId());
        }

        return character;
    }

    public CharacterModel convert(Character character, CharacterModel characterModel) {
        characterModel.setId(character.getId());
        characterModel.setName(character.getName());
        characterModel.setRace(adminService.findRace(character.getRace()));
        characterModel.setClazz(adminService.findClass(character.getClazz()));
        characterModel.setLevel(character.getLevel());
        characterModel.setMaxHealth(character.getMaxHealth());
        characterModel.setCurrentHealth(character.getCurrentHealth());
        characterModel.setStr(character.getAbilityScores().get(AbilityTypeEnum.Str));
        characterModel.setDex(character.getAbilityScores().get(AbilityTypeEnum.Dex));
        characterModel.setCon(character.getAbilityScores().get(AbilityTypeEnum.Con));
        characterModel.setIntel(character.getAbilityScores().get(AbilityTypeEnum.Int));
        characterModel.setWis(character.getAbilityScores().get(AbilityTypeEnum.Wis));
        characterModel.setCha(character.getAbilityScores().get(AbilityTypeEnum.Cha));
        characterModel.setSpeed(character.getSpeed());
//
//        characterModel.setProficiencies(proficiencyConverter.convertToModels(character.getProficiencies()));
//        characterModel.setLanguages(languageConverter.convertToModels(character.getLanguages()));

        if(null != characterModel.getCoinPurse()) {
            CoinPurse purse = new CoinPurse();
            purse.setCP(character.getCoinPurse().get("copper"));
            purse.setSP(character.getCoinPurse().get("silver"));
            purse.setEP(character.getCoinPurse().get("electrum"));
            purse.setGP(character.getCoinPurse().get("gold"));
            purse.setPP(character.getCoinPurse().get("platinum"));
            characterModel.setCoinPurse(purse);
        }

        return characterModel;
    }

    public List<Character> convertToForms(List<CharacterModel> allCharacters) {
        List<Character> characters = new ArrayList<Character>();

        for(CharacterModel characterModel : allCharacters){
            characters.add(convert(characterModel));
        }

        return characters;
    }

    public List<CharacterModel> convertToModels(List<Character> allCharacters) {
        List<CharacterModel> characterModels = new ArrayList<CharacterModel>();

        for(Character character : allCharacters){
            characterModels.add(characterService.findCharacter(character.getId()));
        }

        return characterModels;
    }
}
