package com.rational.model;

import com.rational.model.enums.DieTypeEnum;

import java.util.Random;

/**
 * Created by Andy on 7/23/2014.
 */
public class Dice {
    private DieTypeEnum name;
    private int maxValue;
    private int minValue;
    private Random rand = new Random();

    public Dice(DieTypeEnum type){
        minValue = 1;
        switch(type){
            case d4:
                maxValue = 4;
                break;
            case d6:
                maxValue = 6;
                break;
            case d8:
                maxValue = 8;
                break;
            case d10:
                maxValue = 10;
                break;
            case d12:
                maxValue = 12;
                break;
            case d20:
                maxValue = 20;
                break;
            case d100:
                maxValue = 100;
                break;
        }
    }

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

    public Integer roll(){
        return rand.nextInt(maxValue) + minValue;
    }
}
