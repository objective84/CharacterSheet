package com.rational.forms;

import java.util.List;

public class Race {

    private long id;
    private String name;
    private String description;
    private String size;
    private Integer speed;
    private List<Long> languages;
    private List<Long> traits;
    private List<Long> subRaces;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public Integer getSpeed() {return speed;}

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }


    public List<Long> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Long> languages) {
        this.languages = languages;
    }

    public List<Long> getTraits() {
        return traits;
    }

    public void setTraits(List<Long> traits) {
        this.traits = traits;
    }

    public List<Long> getSubraces() {
        return subRaces;
    }

    public void setSubraces(List<Long> subRaces) {
        this.subRaces = subRaces;
    }
}
