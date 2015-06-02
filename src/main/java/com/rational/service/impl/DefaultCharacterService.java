package com.rational.service.impl;

import com.rational.model.entities.CharacterAdvancement;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Feat;
import com.rational.repository.AdvancementRepository;
import com.rational.repository.CharacterRepository;
import com.rational.repository.FeatRepository;
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

    @Resource
    private FeatRepository featRepository;

    @Transactional
    public CharacterModel save(CharacterModel character) {
        return characterRepository.saveAndFlush(character);
    }

    public List<CharacterModel> findAllCharacters() {
        return characterRepository.findAll();
    }

    public CharacterModel findCharacter(Long id) {
        return characterRepository.findOne(id);
    }

    public void deleteCharacter(Long id) {
        characterRepository.delete(id);
    }

    public CharacterAdvancement saveAdvancement(CharacterAdvancement advancement) {
        return advancementRepository.save(advancement);
    }

    public CharacterAdvancement findAdvancement(Long id) {
        return advancementRepository.findOne(id);
    }

    public List<Feat> findAllFeats(){return featRepository.findAll();}

    public Feat findFeat(Long featId) {
        return featRepository.findOne(featId);
    }
}
