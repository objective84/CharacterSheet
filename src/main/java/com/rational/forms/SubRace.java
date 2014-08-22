package com.rational.forms;

import java.util.List;

public class SubRace {
    private long id;
    private String name;
    private String description;
    private Long parentRace;
    private List<Long> traits;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String raceName) {
        this.name = raceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getParentRace() {
        return parentRace;
    }

    public void setParentRace(Long parentRace) {
        this.parentRace = parentRace;
    }

    public List<Long> getTraits() {
        return traits;
    }

    public void setTraits(List<Long> traits) {
        this.traits = traits;
    }

}
