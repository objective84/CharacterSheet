package com.rational.forms;

public class SubClass {

    private Long id;
    private String name;
    public String description;
    private Long baseClass;

    public Long getId() {return id;}

    public void setId(Long id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {return description;}

    public void setDescription(String description) {this.description = description;}

    public Long getBaseClass() {
        return baseClass;
    }

    public void setBaseClass(Long baseClass) {
        this.baseClass = baseClass;
    }
}
