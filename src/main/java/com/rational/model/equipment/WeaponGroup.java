package com.rational.model.equipment;


import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */

@Entity
@Table(name="WEAPON_GROUPS")
public class WeaponGroup {


    private Long id;

    private String name;
    private String description;

    private List<WeaponModel> weapons = new ArrayList<WeaponModel>();

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

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @OneToMany(mappedBy = "weaponGroup")
    @Where(clause = "EQUIPMENT_TYPE = W")
    public List<WeaponModel> getWeapons() {
        return weapons;
    }

    public void setWeapons(List<WeaponModel> weapons) {
        this.weapons = weapons;
    }
}
