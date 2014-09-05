package com.rational.model.entities;

import javax.persistence.*;

@Entity
@Table(name="spell_slots")
public class SpellSlots {

    @Id @GeneratedValue private Long id;
    @Column(name="per_day_one") private Integer perDayOne = 0;
    @Column(name="per_day_two") private Integer perDayTwo = 0;
    @Column(name="per_day_three") private Integer perDayThree = 0;
    @Column(name="per_day_four") private Integer perDayFour = 0;
    @Column(name="per_day_five") private Integer perDayFive = 0;
    @Column(name="per_day_six") private Integer perDaySix = 0;
    @Column(name="per_day_seven") private Integer perDaySeven = 0;
    @Column(name="per_day_eight") private Integer perDayEight = 0;
    @Column(name="per_day_nine") private Integer perDayNine = 0;

    @Column(name="expended_one") private Integer expendedOne = 0;
    @Column(name="expended_two") private Integer expendedTwo = 0;
    @Column(name="expended_three") private Integer expendedThree = 0;
    @Column(name="expended_four") private Integer expendedFour = 0;
    @Column(name="expended_five") private Integer expendedFive = 0;
    @Column(name="expended_six") private Integer expendedSix = 0;
    @Column(name="expended_seven") private Integer expendedSeven = 0;
    @Column(name="expended_eight") private Integer expendedEight = 0;
    @Column(name="expended_nine") private Integer expendedNine = 0;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPerDayOne() {
        return perDayOne;
    }

    public void setPerDayOne(Integer perDayOne) {
        this.perDayOne = perDayOne;
    }

    public Integer getPerDayTwo() {
        return perDayTwo;
    }

    public void setPerDayTwo(Integer perDayTwo) {
        this.perDayTwo = perDayTwo;
    }

    public Integer getPerDayThree() {
        return perDayThree;
    }

    public void setPerDayThree(Integer perDayThree) {
        this.perDayThree = perDayThree;
    }

    public Integer getPerDayFour() {
        return perDayFour;
    }

    public void setPerDayFour(Integer perDayFour) {
        this.perDayFour = perDayFour;
    }

    public Integer getPerDayFive() {
        return perDayFive;
    }

    public void setPerDayFive(Integer perDayFive) {
        this.perDayFive = perDayFive;
    }

    public Integer getPerDaySix() {
        return perDaySix;
    }

    public void setPerDaySix(Integer perDaySix) {
        this.perDaySix = perDaySix;
    }

    public Integer getPerDaySeven() {
        return perDaySeven;
    }

    public void setPerDaySeven(Integer perDaySeven) {
        this.perDaySeven = perDaySeven;
    }

    public Integer getPerDayEight() {
        return perDayEight;
    }

    public void setPerDayEight(Integer perDayEight) {
        this.perDayEight = perDayEight;
    }

    public Integer getPerDayNine() {
        return perDayNine;
    }

    public void setPerDayNine(Integer perDayNine) {
        this.perDayNine = perDayNine;
    }

    public Integer getExpendedOne() {
        return expendedOne;
    }

    public void setExpendedOne(Integer expendedOne) {
        this.expendedOne = expendedOne;
    }

    public Integer getExpendedTwo() {
        return expendedTwo;
    }

    public void setExpendedTwo(Integer expendedTwo) {
        this.expendedTwo = expendedTwo;
    }

    public Integer getExpendedThree() {
        return expendedThree;
    }

    public void setExpendedThree(Integer expendedThree) {
        this.expendedThree = expendedThree;
    }

    public Integer getExpendedFour() {
        return expendedFour;
    }

    public void setExpendedFour(Integer expendedFour) {
        this.expendedFour = expendedFour;
    }

    public Integer getExpendedFive() {
        return expendedFive;
    }

    public void setExpendedFive(Integer expendedFive) {
        this.expendedFive = expendedFive;
    }

    public Integer getExpendedSix() {
        return expendedSix;
    }

    public void setExpendedSix(Integer expendedSix) {
        this.expendedSix = expendedSix;
    }

    public Integer getExpendedSeven() {
        return expendedSeven;
    }

    public void setExpendedSeven(Integer expendedSeven) {
        this.expendedSeven = expendedSeven;
    }

    public Integer getExpendedEight() {
        return expendedEight;
    }

    public void setExpendedEight(Integer expendedEight) {
        this.expendedEight = expendedEight;
    }

    public Integer getExpendedNine() {
        return expendedNine;
    }

    public void setExpendedNine(Integer expendedNine) {
        this.expendedNine = expendedNine;
    }

    public Integer getRemainingOne(){
        return perDayOne - expendedOne;
    }

    public Integer getRemainingTwo(){
        return perDayTwo - expendedTwo;
    }

    public Integer getRemainingThree(){
        return perDayThree - expendedThree;
    }

    public Integer getRemainingFour(){
        return perDayFour - expendedFour;
    }

    public Integer getRemainingFive(){
        return perDayFive - expendedFive;
    }

    public Integer getRemainingSix(){
        return perDaySix - expendedSix;
    }

    public Integer getRemainingSeven(){
        return perDaySeven - expendedSeven;
    }

    public Integer getRemainingEight(){
        return perDayEight - expendedEight;
    }

    public Integer getRemainingNine(){
        return perDayNine - expendedNine;
    }

    public String getTableHtml(){
        if(perDayOne <= 0)return "";
        String html = "<table>";
        String headers = "<tr><th>Spell Slots</th>";
        String perDay = "<tr><td><span>Per Day</span></td>";
        String remaining = "<tr><td><span>Remaining</span></td>";
        if(perDayOne > 0){
            headers = headers.concat("<th>1st</th>");
            perDay = perDay.concat(getLine(perDayOne));
            remaining = remaining.concat(getLine(getRemainingOne()));
        }
        if(perDayTwo > 0){
            headers = headers.concat("<th>2nd</th>");
            perDay = perDay.concat(getLine(perDayTwo));
            remaining = remaining.concat(getLine(getRemainingTwo()));
        }
        if(perDayThree > 0){
            headers = headers.concat("<th>3rd</th>");
            perDay = perDay.concat(getLine(perDayThree));
            remaining = remaining.concat(getLine(getRemainingThree()));
        }
        if(perDayFour > 0){
            headers = headers.concat("<th>4th</th>");
            perDay = perDay.concat(getLine(perDayFour));
            remaining = remaining.concat(getLine(getRemainingFour()));
        }
        if(perDayFive > 0){
            headers = headers.concat("<th>5th</th>");
            perDay = perDay.concat(getLine(perDayFive));
            remaining = remaining.concat(getLine(getRemainingFive()));
        }
        if(perDaySix > 0){
            headers = headers.concat("<th>6th</th>");
            perDay = perDay.concat(getLine(perDaySix));
            remaining = remaining.concat(getLine(getRemainingSix()));
        }
        if(perDaySeven > 0){
            headers = headers.concat("<th>7th</th>");
            perDay = perDay.concat(getLine(perDaySeven));
            remaining = remaining.concat(getLine(getRemainingSeven()));
        }
        if(perDayEight > 0){
            headers = headers.concat("<th>8th</th>");
            perDay = perDay.concat(getLine(perDayEight));
            remaining = remaining.concat(getLine(getRemainingEight()));
        }
        if(perDayNine > 0){
            headers = headers.concat("<th>9th</th>");
            perDay = perDay.concat(getLine(perDayNine));
            remaining = remaining.concat(getLine(getRemainingNine()));
        }
        headers = headers.concat("</tr>");
        perDay = perDay.concat("</tr>");
        remaining = remaining.concat("</tr>");
        html = html.concat(headers + perDay + remaining + "</table");
        return html;
    }

    private String getLine(Integer num){
        return "<td><input value='" + num + "' id='slots-2' class='input-box-small' readonly='true'/></td>";
    }
}
