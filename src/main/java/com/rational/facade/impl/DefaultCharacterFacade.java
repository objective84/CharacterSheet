package com.rational.facade.impl;

import com.rational.converters.CharacterConverter;
import com.rational.facade.AdminFacade;
import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.model.Dice;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component(value = "defaultCharacterFacade")
public class DefaultCharacterFacade implements CharacterFacade {

    @Resource
    AdminFacade adminFacade;

    @Resource
    CharacterService characterService;

    @Resource
    CharacterConverter characterConverter;

    @Override
    public void save(Character character) {
        characterService.save(characterConverter.convert(character));
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
    public Dice getStartingHealthForClass(Long classId) {
        return new Dice(adminFacade.findClass(classId).getHitDie());
    }
}
