package com.rational.facade;

import com.rational.model.Proficiency;
import com.rational.model.enums.ProficiencyTypeEnum;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public interface ProficiencyFacade {

    void saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    Map<Long, Proficiency> getProficienciesMap();

    Set<Proficiency> getProficienciesOfType(Set<Proficiency> proficiencies, ProficiencyTypeEnum type);
}
