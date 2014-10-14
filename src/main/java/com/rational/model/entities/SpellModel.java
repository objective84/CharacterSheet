package com.rational.model.entities;


import com.rational.model.Dice;
import com.rational.utils.Formatter;
import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/*

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('', #id
        '', #name
        '', #castingTime
        '', #description
        '', #level
        '', #damageDiceAmount
        '', #damageDice ID
        '', #damageType ID
        '', #damageBonus
        '', #savingThrow
        '', #condition
        '', #requiresVerbalComponent
        '', #requiresSomaticComponent
        '', #materialComponent
        '', #duration
        '', #target
        '', #requiresAttackRoll
        '', #ritual
        '', #concentration
        '', #school
        '' #range in feet
);
 */

@Entity
public class SpellModel implements Comparable<SpellModel>{

    @Id
    @GeneratedValue
    private Long id;

    private String name;
    private String description;
    private Integer level;
    private Integer damageDiceAmount;
    private String castingTime;
    private String range;


    @ManyToOne
    @JsonManagedReference
    private Dice damageDice;
    @ManyToOne
    private DamageType damageType;
    private String savingThrow;
    private String condition;
    private Boolean requiresVerbalComponent;
    private Boolean requiresSomaticComponent;
    private String materialComponent;
    private String duration;
    private String target;
    private Boolean requiresAttackRoll;
    private Boolean ritual;
    private Boolean concentration;
    private String school;

    @JoinTable(name="spellmodel_classmodel", joinColumns = @JoinColumn(name="spellmodel_id"), inverseJoinColumns = @JoinColumn(name="classmodel_id"))
    @JsonBackReference @ManyToMany private List<ClassModel> classes = new ArrayList<ClassModel>();

    @JoinTable(name="level_spell", joinColumns = @JoinColumn(name="level_id"), inverseJoinColumns = @JoinColumn(name="spell_id"))
    @JsonBackReference @ManyToMany private List<Level> levels = new ArrayList<Level>();

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getDamageDiceAmount() {
        return damageDiceAmount;
    }

    public void setDamageDiceAmount(Integer damageDiceAmount) {
        this.damageDiceAmount = damageDiceAmount;
    }
    public Dice getDamageDice() {
        return damageDice;
    }

    public void setDamageDice(Dice damageDice) {
        this.damageDice = damageDice;
    }

    public String getSavingThrow() {
        return savingThrow;
    }

    public void setSavingThrow(String savingThrow) {
        this.savingThrow = savingThrow;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }

    public Boolean isRequiresVerbalComponent() {
        return requiresVerbalComponent;
    }

    public void setRequiresVerbalComponent(Boolean requiresVerbalComponent) {
        this.requiresVerbalComponent = requiresVerbalComponent;
    }

    public Boolean isRequiresSomaticComponent() {
        return requiresSomaticComponent;
    }

    public void setRequiresSomaticComponent(Boolean requiresSomaticComponent) {
        this.requiresSomaticComponent = requiresSomaticComponent;
    }

    public String getMaterialComponent() {
        return materialComponent;
    }

    public void setMaterialComponent(String materialComponent) {
        this.materialComponent = materialComponent;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public Boolean isRequiresAttackRoll() {
        return requiresAttackRoll;
    }

    public void setRequiresAttackRoll(Boolean requiresAttackRoll) {
        this.requiresAttackRoll = requiresAttackRoll;
    }

    public Boolean isRitual() {
        return ritual;
    }

    public void setRitual(Boolean ritual) {
        this.ritual = ritual;
    }

    public DamageType getDamageType() {
        return damageType;
    }

    public void setDamageType(DamageType damageType) {
        this.damageType = damageType;
    }

    public String getCastingTime() {
        return castingTime;
    }

    public void setCastingTime(String castingTime) {
        this.castingTime = castingTime;
    }

    public String getRange() {
        return range;
    }

    public void setRange(String range) {
        this.range = range;
    }

    public String getLevelSchool(){
        String levelSchool = "";
        switch(this.level){
            case 0:
                return this.school + " cantrip";
            case 1:
                levelSchool = "1st";
                break;
            case 2:
                levelSchool = "2nd";
                break;
            case 3:
                levelSchool = "3rd";
                break;
            default:
                levelSchool = level+"th";
                break;
        }
        String ritual = this.isRitual() ? "(ritual)" : "";
        levelSchool = levelSchool + "-level " + school.toLowerCase() + " " + ritual;
        return levelSchool;
    }

    public String getComponents(){
        String components = "";
        if(requiresVerbalComponent){
            components = "V";
            if(requiresSomaticComponent) components = components.concat(", S");
            if(StringUtils.isNotEmpty(materialComponent)) components = components.concat(", M("+ materialComponent + ")");
        }else if(requiresSomaticComponent) {
            components = "S";
            if(StringUtils.isNotEmpty(materialComponent)) components = components.concat(", M("+ materialComponent + ")");
        }else if(StringUtils.isNotEmpty(materialComponent)){
            components = "M("+ materialComponent + ")";
        }
        return components;
    }

    private String formatRange(){
        try{
            return Integer.decode(this.range) + " feet";
        }catch (NumberFormatException e){
            return this.range;
        }
    }

    public String getClassesHTML(){
        String classes = "";
        for(ClassModel clazz : this.classes){
            classes = classes.concat(clazz.getName() + ", ");
        }

        classes = classes.substring(0, classes.length()-2);
        return classes;
    }

    public String getDisplayText(){
        return "<div id='spell-text-div'><table>" +
                "<tr><td>" + Formatter.parseSubtitle(this.name) + "</td></tr>" +
                "<tr><td><span class='spell-level-school'>" + this.getLevelSchool() + "</span> </td></tr>" +
                "<tr><td><span class='spell-header'>Casting Time: </span><span class='spell-line'>" + this.castingTime + "</span> </td></tr>" +
                "<tr><td><span class='spell-header'>Range: </span><span class='spell-line'>" + formatRange() + "</span> </td></tr>" +
                "<tr><td><span class='spell-header'>Components: </span><span class='spell-line'>" + this.getComponents() + "</span> </td></tr>" +
                "<tr><td><span class='spell-header'>Duration: </span><span class='spell-line'>" + this.duration + "</span> </td></tr>   " +
                "<tr><td>" + Formatter.formatParagraph(this.description) + "</td></tr></table><br/><span>Castable by: " + this.getClassesHTML() + "</span></div>";
    }

    public Boolean getConcentration() {
        return concentration;
    }

    public void setConcentration(Boolean concentration) {
        this.concentration = concentration;
    }

    public String getSchool(){
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    @Override
    public int compareTo(SpellModel o) {
        if(this.getLevel().compareTo(o.getLevel()) != 0) return this.getLevel().compareTo(o.getLevel());
        return this.getName().compareTo(o.getName());
    }

    public List<Level> getLevels() {
        return levels;
    }

    public void setLevels(List<Level> levels) {
        this.levels = levels;
    }
}
