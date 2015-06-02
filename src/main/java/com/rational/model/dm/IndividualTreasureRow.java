package com.rational.model.dm;

import com.rational.model.enums.DieTypeEnum;

/**
 * Created by awest on 2/6/15.
 */
public class IndividualTreasureRow extends TreasureRow {
    private int lowerCR;
    private int upperCR;
    private int copperDiceNumber;
    private DieTypeEnum copperDiceType;
    private int silverDiceNumber;
    private DieTypeEnum silverDiceType;
    private int goldDiceNumber;
    private DieTypeEnum goldDiceType;
    private int eDiceNumber;
    private DieTypeEnum eDiceType;
    private int platinumDiceNumber;
    private DieTypeEnum platinumDiceType;

    public int getLowerCR() {
        return lowerCR;
    }

    public void setLowerCR(int lowerCR) {
        this.lowerCR = lowerCR;
    }

    public int getUpperCR() {
        return upperCR;
    }

    public void setUpperCR(int upperCR) {
        this.upperCR = upperCR;
    }

    public int getCopperDiceNumber() {
        return copperDiceNumber;
    }

    public void setCopperDiceNumber(int copperDiceNumber) {
        this.copperDiceNumber = copperDiceNumber;
    }

    public DieTypeEnum getCopperDiceType() {
        return copperDiceType;
    }

    public void setCopperDiceType(DieTypeEnum copperDiceType) {
        this.copperDiceType = copperDiceType;
    }

    public int getSilverDiceNumber() {
        return silverDiceNumber;
    }

    public void setSilverDiceNumber(int silverDiceNumber) {
        this.silverDiceNumber = silverDiceNumber;
    }

    public DieTypeEnum getSilverDiceType() {
        return silverDiceType;
    }

    public void setSilverDiceType(DieTypeEnum silverDiceType) {
        this.silverDiceType = silverDiceType;
    }

    public int getGoldDiceNumber() {
        return goldDiceNumber;
    }

    public void setGoldDiceNumber(int goldDiceNumber) {
        this.goldDiceNumber = goldDiceNumber;
    }

    public DieTypeEnum getGoldDiceType() {
        return goldDiceType;
    }

    public void setGoldDiceType(DieTypeEnum goldDiceType) {
        this.goldDiceType = goldDiceType;
    }

    public int geteDiceNumber() {
        return eDiceNumber;
    }

    public void seteDiceNumber(int eDiceNumber) {
        this.eDiceNumber = eDiceNumber;
    }

    public DieTypeEnum geteDiceType() {
        return eDiceType;
    }

    public void seteDiceType(DieTypeEnum eDiceType) {
        this.eDiceType = eDiceType;
    }

    public int getPlatinumDiceNumber() {
        return platinumDiceNumber;
    }

    public void setPlatinumDiceNumber(int platinumDiceNumber) {
        this.platinumDiceNumber = platinumDiceNumber;
    }

    public DieTypeEnum getPlatinumDiceType() {
        return platinumDiceType;
    }

    public void setPlatinumDiceType(DieTypeEnum platinumDiceType) {
        this.platinumDiceType = platinumDiceType;
    }
}
