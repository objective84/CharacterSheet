package com.rational.forms;

public class SpellCastData {

    private String spellName;
    private int[] toHitRolls;
    private int proficiencyBonus;
    private int magicAbilityMod;
    private String magicAbility;
    private String damageDie;
    private int[] damage;
    private int totalDamage;
    private String damageType;
    private String saveType;
    private Integer saveDC;

    public int[] getToHitRolls() {
        return toHitRolls;
    }

    public void setToHitRolls(int[] toHitRolls) {
        this.toHitRolls = toHitRolls;
    }

    public int[] getDamage() {
        return damage;
    }

    public void setDamage(int[] damage) {
        this.damage = damage;
    }

    public String getDamageType() {
        return damageType;
    }

    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }

    public String getSaveType() {
        return saveType;
    }

    public void setSaveType(String saveType) {
        this.saveType = saveType;
    }

    public Integer getSaveDC() {
        return saveDC;
    }

    public void setSaveDC(Integer saveDC) {
        this.saveDC = saveDC;
    }

    public int getTotalDamage() {
        return totalDamage;
    }

    public void setTotalDamage(int totalDamage) {
        this.totalDamage = totalDamage;
    }

    public String getSpellName() {
        return spellName;
    }

    public void setSpellName(String spellName) {
        this.spellName = spellName;
    }

    public String getDamageDie() {
        return damageDie;
    }

    public void setDamageDie(String damageDie) {
        this.damageDie = damageDie;
    }

    public int getProficiencyBonus() {
        return proficiencyBonus;
    }

    public void setProficiencyBonus(int proficiencyBonus) {
        this.proficiencyBonus = proficiencyBonus;
    }

    public int getMagicAbilityMod() {
        return magicAbilityMod;
    }

    public void setMagicAbilityMod(int magicAbilityMod) {
        this.magicAbilityMod = magicAbilityMod;
    }

    public String getMagicAbility() {
        return magicAbility;
    }

    public void setMagicAbility(String magicAbility) {
        this.magicAbility = magicAbility;
    }
}
