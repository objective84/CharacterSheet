/**
 * Created by Andy on 7/23/2014.
 */
package com.rational.model.entities;


import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="languages")
public class Language {

    @Id
    @GeneratedValue
    private int id;

    @Column(name="LANGUAGE_NAME")
    private String name;

    @Column(name="LANGUAGE_DESCRIPTION")
    private String description;

    @ManyToMany(mappedBy = "languages")
    private List<Race> races;

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

    public List<Race> getRaces() {
        return races;
    }

    public void setRaces(List<Race> races) {
        this.races = races;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
