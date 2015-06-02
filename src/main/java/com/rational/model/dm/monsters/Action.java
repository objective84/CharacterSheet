package com.rational.model.dm.monsters;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

/**
 * Created by Andy on 5/5/2015.
 */
@Entity
public class Action {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private int toHitBonus;
    private String target;
    private String range;
    private String type;
    @OneToMany
    private List<Damage> damages;
    private String description;

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

    public int getToHitBonus() {
        return toHitBonus;
    }

    public void setToHitBonus(int toHitBonus) {
        this.toHitBonus = toHitBonus;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getRange() {
        return range;
    }

    public void setRange(String range) {
        this.range = range;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Damage> getDamages() {
        return damages;
    }

    public void setDamages(List<Damage> damages) {
        this.damages = damages;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
