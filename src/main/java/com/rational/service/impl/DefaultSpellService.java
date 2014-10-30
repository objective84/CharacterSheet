package com.rational.service.impl;

import com.rational.model.entities.SpellModel;
import com.rational.repository.SpellRepository;
import com.rational.service.SpellService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultSpellService")
public class DefaultSpellService implements SpellService {
    @Resource
    private SpellRepository spellRepository;

    @Override
    public SpellModel saveSpell(SpellModel spell){
        return spellRepository.save(spell);
    }

    @Override
    public SpellModel findSpell(Long id){
        return spellRepository.findOne(id);
    }

    @Override
    public List<SpellModel> findAllSpells(){
        return spellRepository.findAll();
    }
}
