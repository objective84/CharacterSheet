package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="class_traits")
public class ClassTrait {

    @Id
    @GeneratedValue
    private int id;

    @Column(name="name")
    private String name;

    @ManyToMany(mappedBy = "classTraits")
    private List<Clazz> classes= new ArrayList<Clazz>();

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

    public List<Clazz> getClasses() {
        return classes;
    }

    public void setClasses(List<Clazz> classes) {
        this.classes = classes;
    }
}
