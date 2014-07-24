package com.rational.model;

import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
public class Subrace {
    private String name;
    private String description;
    private List<Trait> traits;

    public List<Trait> getTraits() {
        return traits;
    }

    public void setTraits(List<Trait> traits) {
        this.traits = traits;
    }

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
}
