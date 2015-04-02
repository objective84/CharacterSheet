package com.rational.facade.impl;

import com.rational.facade.AbilitiesFacade;
import com.rational.model.entities.Abilities;
import com.rational.service.AbilitiesService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component("defaultAbilitiesFacade")
public class DefaultAbilitiesFacade implements AbilitiesFacade {

    @Resource(name="defaultAbilitiesService")
    private AbilitiesService abilitiesService;

    public Abilities saveAbilities(Abilities abilities) {
        return abilitiesService.saveAbilities(abilities);
    }
}
