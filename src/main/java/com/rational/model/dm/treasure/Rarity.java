package com.rational.model.dm.treasure;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by awest on 2/16/15.
 */
@Entity
public class Rarity {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private int minimumLevel;
    private int minimumGoldValue;
    private int maximumGoldValue;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMinimumLevel() {
        return minimumLevel;
    }

    public void setMinimumLevel(int minimumLevel) {
        this.minimumLevel = minimumLevel;
    }

    public int getMinimumGoldValue() {
        return minimumGoldValue;
    }

    public void setMinimumGoldValue(int minimumGoldValue) {
        this.minimumGoldValue = minimumGoldValue;
    }

    public int getMaximumGoldValue() {
        return maximumGoldValue;
    }

    public void setMaximumGoldValue(int maximumGoldValue) {
        this.maximumGoldValue = maximumGoldValue;
    }
}
