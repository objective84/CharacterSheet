package com.rational.model;

import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
public class Race {

    private String raceName;
    private String description;
    private String size;
    private int speed;
    private List<Language> languages;
    private List<Trait> traits;
    private Subrace subrace;

    public String getRaceName() {
        return raceName;
    }

    public void setRaceName(String raceName) {
        this.raceName = raceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public List<Language> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Language> languages) {
        this.languages = languages;
    }

    public List<Trait> getTraits() {
        return traits;
    }

    public void setTraits(List<Trait> traits) {
        this.traits = traits;
    }

    public Subrace getSubrace() {
        return subrace;
    }

    public void setSubrace(Subrace subrace) {
        this.subrace = subrace;
    }
}
