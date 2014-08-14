package com.rational.facade.impl;

import com.rational.converters.CharacterConverter;
import com.rational.converters.EquipmentConverter;
import com.rational.facade.AdminFacade;
import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.enums.ExchangeRateEnum;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.exceptions.PurchaseException;
import com.rational.service.AdminService;
import com.rational.service.CharacterService;
import com.rational.service.CurrencyService;
import com.rational.service.DiceService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Set;

@Component(value = "defaultCharacterFacade")
public class DefaultCharacterFacade implements CharacterFacade {

    @Resource
    AdminFacade adminFacade;

    @Resource
    AdminService adminService;

    @Resource
    CharacterService characterService;

    @Resource
    CharacterConverter characterConverter;

    @Resource
    EquipmentConverter equipmentConverter;

    @Resource
    CurrencyService currencyService;

    @Resource
    DiceService diceService;

    @Override
    public CharacterModel save(Character character) {
        return characterService.save(characterConverter.convert(character,
                character.getId() == null ? new CharacterModel(): characterService.findCharacter(character.getId())));
    }

    @Override
    public CharacterModel save(CharacterModel character) {
        return characterService.save(character);
    }

    @Override
    public List<Character> findAllCharacters() {
        return characterConverter.convertToForms(characterService.findAllCharacters());
    }

    @Override
    public Character findCharacter(Long id) {
        return characterConverter.convert(characterService.findCharacter(id));
    }

    @Override
    public Character levelUp(Character character)
    {
        //TODO: increase health
        //TODO: add class traits
        //TODO: add spells

        return character;
    }

    @Override
    public CharacterModel getCharacterModel(Long id) {
        CharacterModel characterModel = new CharacterModel();
        if(id != 0){
            characterModel = characterService.findCharacter(id);
        }
        return characterModel;
    }

    @Override
    public void deleteCharacter(Long aLong) {
        characterService.deleteCharacter(aLong);
    }

    @Override
    public CharacterModel purchaseGear(Long charId, Set<Long> equipmentIds) throws PurchaseException {
        CharacterModel characterModel = characterService.findCharacter(charId);
        if(null == characterModel.getCoinPurse()){
            throw new PurchaseException(PurchaseException.NO_PURSE);
        }

        List<EquipmentModel> equipmentModels = equipmentConverter.convertToModels(equipmentIds);

        BigDecimal totalCost = BigDecimal.ZERO;
        totalCost.setScale(2, RoundingMode.HALF_UP);
        for(EquipmentModel equipmentModel : equipmentModels){
            if(!CoinTypeEnum.PLATINUM.equals(equipmentModel.getPriceDenomination().getCoinType())) {
                BigDecimal exchange = ExchangeRateEnum.getExchangeRate(
                        equipmentModel.getPriceDenomination().getCoinType(), CoinTypeEnum.PLATINUM);
                totalCost = totalCost.add(BigDecimal.valueOf(equipmentModel.getPrice()).divide(exchange).setScale(2, RoundingMode.HALF_UP));
            }else{
                totalCost = totalCost.add(BigDecimal.valueOf(equipmentModel.getPrice()));
            }
        }

        BigDecimal change = currencyService.getTotalPurseValueInPlatinum(characterModel.getCoinPurse()).subtract(totalCost);

        if(change.compareTo(BigDecimal.ZERO) <= 0){
            throw new PurchaseException(PurchaseException.NOT_ENOUGH_COIN);
        }

        characterModel.setCoinPurse(currencyService.convertTotal(change));
        characterModel.setInventory(equipmentModels);
        characterModel = characterService.save(characterModel);

        return characterModel;
    }

    @Override
    public CharacterModel setCharacterClass(Long characterId, Long classId) {
        CharacterModel characterModel = characterService.findCharacter(characterId);
        ClassModel classModel = adminService.findClass(classId);
        characterModel.setClazz(classModel);
        characterModel.setCoinPurse(currencyService.getStartingWealth(classModel.getStartingWealthDie(), classModel.getStartingWealthDieAmount()));
        characterModel.setMaxHealth(classModel.getHitDie().getMaxRoll());
        characterService.save(characterModel);
        return characterModel;
    }
}
