package com.rational.model.dm.treasure;

import javax.persistence.*;

/**
 * Created by awest on 2/6/15.
 */
@Entity
@Table(name = "magic_item")
public class MagicItem {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String description;

    @ManyToOne
    private Rarity rarity;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Rarity getRarity() {
        return rarity;
    }

    public void setRarity(Rarity rarity) {
        this.rarity = rarity;
    }
}
