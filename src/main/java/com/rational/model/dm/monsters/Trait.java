package com.rational.model.dm.monsters;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Andy on 5/5/2015.
 */
@Entity
public class Trait {
    @Id
    @GeneratedValue
    int id;
    String name;
    String description;

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

    public int getId() {
        return id;
    }

    public void setId(int traitId) {
        this.id = traitId;
    }
}
