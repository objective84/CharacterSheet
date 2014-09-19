package com.rational.service;

import com.rational.model.entities.CharacterDescription;


public interface DescriptionService {

    CharacterDescription save(CharacterDescription description);

    CharacterDescription find(Long id);

}
