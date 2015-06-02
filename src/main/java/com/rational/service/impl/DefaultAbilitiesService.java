package com.rational.service.impl;

import com.rational.model.entities.Abilities;
import com.rational.repository.AbilitiesRepository;
import com.rational.service.AbilitiesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("defaultAbilitiesService")
public class DefaultAbilitiesService implements AbilitiesService {

    @Resource
    private AbilitiesRepository abilitiesRepository;

    public Abilities saveAbilities(Abilities abilities) {
        return abilitiesRepository.save(abilities);
    }

    public Abilities findAbilities(Long id) {
        return abilitiesRepository.findOne(id);
    }
}
