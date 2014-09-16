package com.rational.service.impl;

import com.rational.model.Proficiency;
import com.rational.repository.ProficiencyRepository;
import com.rational.service.ProficiencyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultProficiencyService")
public class DefaultProficiencyService implements ProficiencyService {
    @Resource
    ProficiencyRepository proficiencyRepository;
    @Override
    public Proficiency findProficiency(Long id) {
        return proficiencyRepository.findOne(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return proficiencyRepository.findAll();
    }
    @Override
    @Transactional
    public Proficiency saveProficiency(Proficiency proficiency) {
        return proficiencyRepository.save(proficiency);
    }
}
