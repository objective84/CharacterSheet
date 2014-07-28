package com.rational.model.entities;

import javax.persistence.*;

@Entity
@Table(name = "subclass")
public class SubClazz {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @ManyToOne
    private Clazz clazz;

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

    public Clazz getClazz() {
        return clazz;
    }

    public void setClazz(Clazz clazz) {
        this.clazz = clazz;
    }
}
