package com.rational.forms;

public class RaceForm {

    private long id;
    private String raceName;
    private String description;
    private String size;
    private Integer speed;
    private Long[] languages;
    private Long[] traits;
    private Long[] subraces;

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

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Long[] getLanguages() {
        return languages;
    }

    public void setLanguages(Long[] languages) {
        this.languages = languages;
    }

    public Long[] getTraits() {
        return traits;
    }

    public void setTraits(Long[] traits) {
        this.traits = traits;
    }

    public Long[] getSubraces() {
        return subraces;
    }

    public void setSubraces(Long[] subraces) {
        this.subraces = subraces;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
