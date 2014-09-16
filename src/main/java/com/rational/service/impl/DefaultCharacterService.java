package com.rational.service.impl;

import com.rational.model.entities.CharacterAdvancement;
import com.rational.model.entities.CharacterModel;
import com.rational.repository.AdvancementRepository;
import com.rational.repository.CharacterRepository;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultCharacterService")
public class DefaultCharacterService implements CharacterService{

    @Resource
    private CharacterRepository characterRepository;

    @Resource
    private AdvancementRepository advancementRepository;


    @Override
    @Transactional
    public CharacterModel save(CharacterModel character) {
        return characterRepository.saveAndFlush(character);
    }

    @Override
    public List<CharacterModel> findAllCharacters() {
        return characterRepository.findAll();
    }

    @Override
    public CharacterModel findCharacter(Long id) {
        return characterRepository.findOne(id);
    }

    @Override
    public void deleteCharacter(Long id) {
        characterRepository.delete(id);
    }

    @Override
    public CharacterAdvancement saveAdvancement(CharacterAdvancement advancement) {
        return advancementRepository.save(advancement);
    }

    @Override
    public CharacterAdvancement findAdvancement(Long id) {
        return advancementRepository.findOne(id);
    }
}
