package com.rational.forms;

import javax.persistence.Entity;
import javax.persistence.Table;

public class SubClassForm {

    private Long id;
    private String name;
    private Long baseClass;

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

    public Long getBaseClass() {
        return baseClass;
    }

    public void setBaseClass(Long baseClass) {
        this.baseClass = baseClass;
    }
}
