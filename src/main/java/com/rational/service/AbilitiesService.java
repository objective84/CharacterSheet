package com.rational.service;

import com.rational.model.entities.Abilities;

public interface AbilitiesService {



    Abilities saveAbilities(Abilities abilities);

    Abilities findAbilities(Long aLong);
}
