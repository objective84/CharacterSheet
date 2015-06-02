package com.rational.service.impl;

import com.google.common.collect.Lists;
import com.rational.model.entities.TraitModel;
import com.rational.repository.TraitRepository;
import com.rational.service.TraitService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultTraitService")
public class DefaultTraitService implements TraitService {

    @Resource
    private TraitRepository traitRepository;

    @Transactional
    public TraitModel saveTrait(TraitModel trait) {
        return traitRepository.save(trait);
    }

    public TraitModel findTrait(Long id) {return traitRepository.findOne(id);}

    public List<TraitModel> findAllTraits() {return traitRepository.findAll();}

    public List<TraitModel> findTraits(List<Long> traits){return Lists.newArrayList(traitRepository.findAll(traits));}

}
