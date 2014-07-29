package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subclass")
public class SubClass {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @ManyToMany(mappedBy="subClasses")
    private List<Trait> subClassTraits = new ArrayList<Trait>();

    @ManyToOne
    private Clazz baseClass;

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

    public Clazz getBaseClass() {
        return baseClass;
    }

    public void setBaseClass(Clazz clazz) {
        this.baseClass = clazz;
    }

    public List<Trait> getSubClassTraits() {
        return subClassTraits;
    }

    public void setSubClassTraits(List<Trait> subClassTraits) {
        this.subClassTraits = subClassTraits;
    }
}
