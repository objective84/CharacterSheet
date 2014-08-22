package com.rational.service.impl;

import com.rational.repository.CharacterRepository;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Service;
import com.rational.model.entities.CharacterModel;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultCharacterService")
public class DefaultCharacterService implements CharacterService{

    @Resource
    private CharacterRepository characterRepository;

    @Override
    @Transactional
    public CharacterModel save(CharacterModel character) {
        return characterRepository.save(character);
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
}
