package com.rational.facade.impl;

import com.rational.facade.ProficiencyFacade;
import com.rational.model.Proficiency;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.service.ProficiencyService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;

@Component("defaultProficiencyFacade")
public class DefaultProficiencyFacade implements ProficiencyFacade {

    @Resource(name="defaultProficiencyService")
    private ProficiencyService proficiencyService;

    @Override
    public void saveProficiency(Proficiency proficiency) {proficiencyService.saveProficiency(proficiency);}

    @Override
    public Proficiency findProficiency(Long id) {
        return proficiencyService.findProficiency(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return proficiencyService.findAllProficiencies();
    }

    @Override
    public Map<Long, Proficiency> getProficienciesMap() {
        Map<Long, Proficiency> proficiencyMap = new HashMap<Long, Proficiency>();
        List<Proficiency> proficiencyList = proficiencyService.findAllProficiencies();

        for(Proficiency proficiency : proficiencyList){
            proficiencyMap.put(proficiency.getId(), proficiency);
        }
        return proficiencyMap;
    }

    @Override
    public Set<Proficiency> getProficienciesOfType(Set<Proficiency> proficiencies, ProficiencyTypeEnum type){
        Set<Proficiency> proficiencyList = new HashSet<Proficiency>();
        for(Proficiency proficiency : proficiencies){
            if(proficiency.getProficiencyType().equals(type)){
                proficiencyList.add(proficiency);
            }
        }
        return proficiencyList;
    }

}
