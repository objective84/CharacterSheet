package com.rational.model.enums;

public enum DieTypeEnum {
    d4("d4", 1l),
    d6("d6", 2l),
    d8("d8", 3l),
    d10("d10", 4l),
    d12("d12", 5l),
    d20("d20", 6l),
    d100("d100",7l);
    private String type;
    private Long id;

    private DieTypeEnum(String type, Long id){
        this.type = type;
        this.id = id;
    }

    public static String[] getAllHitDieTypes(){
        return new String[]{d4.type, d6.type, d8.type, d10.type,
                d12.type};
    }


    public static String value(DieTypeEnum dieEnum){
        return dieEnum.type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
