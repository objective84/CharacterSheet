package com.rational.model.dm.monsters;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Andy on 5/5/2015.
 */
@Entity(name="monster_actions")
public class Action {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private Integer toHitBonus;
    private String target;
    private String range;
    private String type;
    @OneToMany
    @JoinColumn(name="monster_actions_id")
    private List<Damage> damages;
    private String description;
    @Column(name="max_per_day_ability")
    private Integer maxPerDayAbility;
    @Column(name="current_per_day_ability")
    private Integer currentPerDayAbility;

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

    public void setToHitBonus(Integer toHitBonus) {
        this.toHitBonus = toHitBonus;
    }

    public Integer getMaxPerDayAbility() {
        return maxPerDayAbility;
    }

    public void setMaxPerDayAbility(Integer maxPerDayAbility) {
        this.maxPerDayAbility = maxPerDayAbility;
    }

    public Integer getCurrentPerDayAbility() {
        return currentPerDayAbility;
    }

    public void setCurrentPerDayAbility(Integer currentPerDayAbility) {
        this.currentPerDayAbility = currentPerDayAbility;
    }
}
