package com.rational.converters;

import com.rational.model.Proficiency;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ProficiencyConverter {
    public List<Proficiency> convertToEntities(List<Long> proficiencies) {
        List<Proficiency> proficiencies1 = new ArrayList<Proficiency>();

        return proficiencies1;
    }

    public List<Long> convertToIds(List<Proficiency> proficiencies) {
        List<Long> proficiencies1 = new ArrayList<Long>();

        return proficiencies1;
    }
}
