package com.rational.service;

import com.rational.model.Proficiency;

import java.util.List;

public interface ProficiencyService {


    Proficiency saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();
}
