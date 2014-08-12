package com.rational.model.enums;

public enum CoinTypeEnum {
    COPPER("Copper", "cp"),
    SILVER("Silver", "sp"),
    ELECTRUM("Electrum", "ep"),
    GOLD("Gold", "gp"),
    PLATINUM("Platinum", "pp");

    private String type;
    private String abbr;

    private CoinTypeEnum(String type, String abbr){
        this.type = type;
        this.abbr = abbr;
    }

    public String getType() {
        return type;
    }

    public String getAbbr() {
        return abbr;
    }
}
