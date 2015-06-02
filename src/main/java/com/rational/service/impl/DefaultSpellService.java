package com.rational.service.impl;

import com.rational.model.entities.SpellModel;
import com.rational.model.enums.SpellSearchParam;
import com.rational.repository.SpellRepository;
import com.rational.repository.SpellSearchRepository;
import com.rational.service.SpellService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service("defaultSpellService")
public class DefaultSpellService implements SpellService {
    @Resource
    private SpellRepository spellRepository;

    @Resource(name="spellSearchRepository")
    private SpellSearchRepository spellSearchRepository;

    public SpellModel saveSpell(SpellModel spell){
        return spellRepository.save(spell);
    }

    public SpellModel findSpell(Long id){
        return spellRepository.findOne(id);
    }

    public List<SpellModel> findAllSpells(){
        return spellRepository.findAll();
    }

    public Set<SpellModel> customSearch(Map<SpellSearchParam, List<String>> params) {
        return new HashSet<SpellModel>(spellSearchRepository.search(params));
    }
}
