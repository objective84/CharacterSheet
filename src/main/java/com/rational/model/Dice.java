package com.rational.model;

import com.rational.model.enums.DieTypeEnum;

/**
 * Created by Andy on 7/23/2014.
 */
public class Dice {
    private DieTypeEnum name;
    private int maxValue;
    private int minValue;

    public DieTypeEnum getName() {
        return name;
    }

    public void setName(DieTypeEnum name) {
        this.name = name;
    }

    public int getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(int maxValue) {
        this.maxValue = maxValue;
    }

    public int getMinValue() {
        return minValue;
    }

    public void setMinValue(int minValue) {
        this.minValue = minValue;
    }
}
