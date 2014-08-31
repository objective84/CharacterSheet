package com.rational.model;

import com.rational.model.entities.ClassModel;
import com.rational.model.entities.RaceModel;
import com.rational.model.entities.SubRaceModel;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.model.equipment.EquipmentModel;
import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
public class Proficiency {


    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    private ProficiencyTypeEnum proficiencyType;

    @Column(name="proficiencyTypeString")
    private String proficiencyTypeString;

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="classmodel_proficiency", joinColumns = @JoinColumn(name="classes_id"), inverseJoinColumns = @JoinColumn(name="proficiencies_id"))
    private List<ClassModel> classes = new ArrayList<ClassModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="equipmentmodel_proficiency", joinColumns = @JoinColumn(name="proficiencies_id"), inverseJoinColumns = @JoinColumn(name="equipment_id"))
    private List<EquipmentModel> equipment = new ArrayList<EquipmentModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="racemodel_proficiency", joinColumns = @JoinColumn(name="proficiencies_id"), inverseJoinColumns = @JoinColumn(name="races_id"))
    private List<RaceModel> races = new ArrayList<RaceModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="subraces_proficiency", joinColumns = @JoinColumn(name="proficiencies_id"), inverseJoinColumns = @JoinColumn(name=""))
    private List<SubRaceModel> subRaces = new ArrayList<SubRaceModel>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public ProficiencyTypeEnum getProficiencyType() {
        return ProficiencyTypeEnum.valueOf(proficiencyTypeString);
    }

    public String getProficiencyTypeString() {
        return proficiencyTypeString;
    }

    public void setProficiencyTypeString(String proficiencyTypeString) {
        this.proficiencyTypeString = proficiencyTypeString;
    }

    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }

    public List<EquipmentModel> getEquipment() {
        return equipment;
    }

    public void setEquipment(List<EquipmentModel> equipment) {
        this.equipment = equipment;
    }

    public List<RaceModel> getRaces() {
        return races;
    }

    public void setRaces(List<RaceModel> races) {
        this.races = races;
    }

    public List<SubRaceModel> getSubRaces() {
        return subRaces;
    }

    public void setSubRaces(List<SubRaceModel> subRaces) {
        this.subRaces = subRaces;
    }
}
