package com.rational.model.enums;

public enum AOETypeEnum {
    LINE("Line"),
    CONE("Cone"),
    CUBE("Cube"),
    SPHERE("Sphere"),
    CYLINDER("Cylinder");

    private String type;

    private AOETypeEnum(String type) {
        this.type = type;
    }

    @Override
    public String toString(){
        return type;
    }

    public String getType() {
        return type;
    }
}
