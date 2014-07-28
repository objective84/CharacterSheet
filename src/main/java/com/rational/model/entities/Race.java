/**
 * Created by awest on 7/23/14.
 */
package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="races")
public class Race {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String raceName;

    @Column(name="description")
    private String description;

    @Column(name="size")
    private String size;

    @Column(name="speed")
    private Integer speed;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<Language> languages = new ArrayList<Language>();

    @OneToMany(mappedBy = "parentRace", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Subrace> availableSubraces = new ArrayList<Subrace>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

//    public List<Trait> getRacialTraits() {
//        return racialTraits;
//    }
//
//    public void setRacialTraits(List<Trait> racialTraits) {
//        this.racialTraits = racialTraits;
//    }

//    public Subrace getSubrace() {
//        return subrace;
//    }
//
//    public void setSubrace(Subrace subrace) {
//        this.subrace = subrace;
//    }


    public List<Subrace> getAvailableSubraces() {
        return availableSubraces;
    }

    public void setAvailableSubraces(List<Subrace> availableSubraces) {
        this.availableSubraces = availableSubraces;
    }
}
