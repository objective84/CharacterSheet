package com.rational.model.entities;

import com.rational.model.Proficiency;
import com.rational.model.enums.DieTypeEnum;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
@Entity
@Table(name="classes")
public class ClassModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="hit_die")
    private DieTypeEnum hitDie;

    @OneToMany(mappedBy = "clazz")
    @JsonManagedReference
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

    @ManyToMany
    @JsonManagedReference
    private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

    @ManyToMany(mappedBy="classes")
    @JsonManagedReference
    private List<TraitModel> classTraits = new ArrayList<TraitModel>();

    @OneToMany(mappedBy = "baseClass", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<SubClassModel> subClasses = new ArrayList<SubClassModel>();

    @Column(name="skills_at_creation")
    private Integer skillsAtCreation;

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

    public DieTypeEnum getHitDie() {
        return hitDie;
    }

    public void setHitDie(DieTypeEnum hitDie) {
        this.hitDie = hitDie;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<TraitModel> getClassTraits() {
        return classTraits;
    }

    public void setClassTraits(List<TraitModel> classTraits) {
        this.classTraits = classTraits;
    }

    public List<SubClassModel> getSubClasses() {
        return subClasses;
    }

    public void setSubClasses(List<SubClassModel> subClasses) {
        this.subClasses = subClasses;
    }

    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }

    public Integer getSkillsAtCreation() {
        return skillsAtCreation;
    }

    public void setSkillsAtCreation(Integer skillsAtCreation) {
        this.skillsAtCreation = skillsAtCreation;
    }
}
