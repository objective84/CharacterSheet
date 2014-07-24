package com.rational.service.impl;

import com.rational.repository.CharacterRepository;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Service;
import com.rational.model.entities.Character;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultCharacterService")
public class DefaultCharacterService implements CharacterService{

    @Resource
    private CharacterRepository characterRepository;

    @Override
    @Transactional
    public Character save(Character character) {
        return characterRepository.save(character);
    }

    @Override
    public List<Character> getCharacterList() {
        return characterRepository.findAll();
    }

    @Override
    public Character getCharacter(Long id) {
        return characterRepository.findOne(id);
    }
}
