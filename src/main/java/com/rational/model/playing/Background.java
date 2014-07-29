package com.rational.model.playing;

import com.rational.model.Characteristic;
import com.rational.model.entities.LanguageModel;
import com.rational.model.Proficiency;

import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
public class Background {
    private String name;
    private String description;
    private List<Proficiency> proficiencies;
    private List<LanguageModel> languages;
    private String feature;
    private List<Characteristic> characteristics;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<LanguageModel> getLanguages() {
        return languages;
    }

    public void setLanguages(List<LanguageModel> languages) {
        this.languages = languages;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public List<Characteristic> getCharacteristics() {
        return characteristics;
    }

    public void setCharacteristics(List<Characteristic> characteristics) {
        this.characteristics = characteristics;
    }
}
