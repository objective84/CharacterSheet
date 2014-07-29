package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subclass")
public class SubClassModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @ManyToMany(mappedBy="subClasses")
    private List<TraitModel> subClassTraits = new ArrayList<TraitModel>();

    @ManyToOne
    private ClassModel baseClass;

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

    public ClassModel getBaseClass() {
        return baseClass;
    }

    public void setBaseClass(ClassModel clazz) {
        this.baseClass = clazz;
    }

    public List<TraitModel> getSubClassTraits() {
        return subClassTraits;
    }

    public void setSubClassTraits(List<TraitModel> subClassTraits) {
        this.subClassTraits = subClassTraits;
    }
}
