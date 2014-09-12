package com.rational.facade;

import com.rational.model.Proficiency;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ProficiencyFacade {

    void saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    Map<Long, Proficiency> getProficienciesMap();

}
