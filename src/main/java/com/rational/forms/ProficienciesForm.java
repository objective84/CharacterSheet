package com.rational.forms;

import com.rational.model.Proficiency;

import java.util.List;

public class ProficienciesForm {

    private List<Proficiency> proficiencies;

    public ProficienciesForm(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
