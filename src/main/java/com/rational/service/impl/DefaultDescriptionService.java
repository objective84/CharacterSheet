package com.rational.service.impl;

import com.rational.model.entities.CharacterDescription;
import com.rational.repository.DescriptionRepository;
import com.rational.service.DescriptionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("defaultDescriptionService")
public class DefaultDescriptionService implements DescriptionService {

    @Resource
    DescriptionRepository descriptionRepository;

    public CharacterDescription save(CharacterDescription description) {
        return descriptionRepository.save(description);
    }

    public CharacterDescription find(Long id) {
        return descriptionRepository.findOne(id);
    }
}
