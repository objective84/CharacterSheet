package com.rational.model.entities;


import com.rational.model.Proficiency;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
public class CharacterModel {

    @Id @GeneratedValue private Long id;

    private boolean encumbered;
    private Integer speed = 0;
    private int maxHealth;
    private int currentHealth;
    private Long inventoryWeight;
    private Integer armorClass;

    @JsonManagedReference @OneToOne(cascade = CascadeType.ALL) private CoinPurse coinPurse;
    @OneToOne(cascade = CascadeType.ALL) @JoinColumn(name="character_description") private CharacterDescription characterDescription;
    @OneToOne(cascade = CascadeType.ALL) @JoinColumn(name="abilities_id") private Abilities abilities;
    @OneToOne(cascade = CascadeType.ALL) @JoinColumn(name="spell_slots_id") private SpellSlots spellSlots;
    @OneToOne(cascade = CascadeType.ALL) @JoinColumn(name = "character_advancement_id") private CharacterAdvancement characterAdvancement;
    @ManyToOne private RaceModel race;
    @ManyToOne private SubRaceModel subrace;
    @ManyToOne private ClassModel clazz;
    @JsonManagedReference @ManyToOne private ArmorModel equippedArmor;
    @JsonManagedReference @ManyToOne private WeaponModel equippedMainHand;
    @JsonManagedReference @ManyToOne private EquipmentModel equippedOffHand;

    @JoinTable(name="classmodel_charactermodel", joinColumns = @JoinColumn(name="charactermodel_id"), inverseJoinColumns = @JoinColumn(name = "classmodel_id"))
    @ManyToMany private List<ClassModel> multiClassList;

    @JoinTable(name="character_language", joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="language_id"))
    @ManyToMany private Set<LanguageModel> languages = new HashSet<LanguageModel>();

    @JoinTable(name="character_proficiency", joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="proficiency_id"))
    @ManyToMany private Set<Proficiency> proficiencies = new HashSet<Proficiency>();

    @JoinTable(name="traitmodel_charactermodel", joinColumns = @JoinColumn(name="charactermodel_id"), inverseJoinColumns = @JoinColumn(name="traitmodel_id"))
    @ManyToMany private Set<TraitModel> traits = new HashSet<TraitModel>();

    @JoinTable(name="character_equipment", joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="equipment_id"))
    @ManyToMany private List<EquipmentModel> inventory = new ArrayList<EquipmentModel>();

    @JoinTable(name="charactermodel_spellmodel", joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="spellmodel_id"))
    @ManyToMany private List<SpellModel> spellsKnown = new ArrayList<SpellModel>();

    @JoinTable(name="charactermodel_preparedspells", joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="spellmodel_id"))
    @ManyToMany private List<SpellModel> preparedSpells = new ArrayList<SpellModel>();

    public CharacterModel(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public RaceModel getRace() {
        return race;
    }

    public void setRace(RaceModel race) {
        this.race = race;
    }

    public List<ClassModel> getMultiClassList() {
        return multiClassList;
    }

    public void setMultiClassList(List<ClassModel> multiClassList) {
        this.multiClassList = multiClassList;
    }

    public void addClazz(ClassModel clazz){
        getMultiClassList().add(clazz);
    }

    public int getMaxHealth() {
        return maxHealth;
    }

    public void setMaxHealth(int maxHealth) {
        this.maxHealth = maxHealth;
    }

    public int getCurrentHealth() {
        return currentHealth;
    }

    public void setCurrentHealth(int currentHealth) {
        this.currentHealth = currentHealth;
    }

    public Set<Proficiency> getProficiencies() { return this.proficiencies;}

    public void setProficiencies(Set<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
    public Set<LanguageModel> getLanguages() {return this.languages;}

    public void setLanguages(Set<LanguageModel> languages) {
        this.languages = languages;
    }

    public Set<TraitModel> getTraits() {return this.traits;}


    public void setTraits(Set<TraitModel> traits) {
        this.traits = traits;
    }

    public List<EquipmentModel> getInventory() {
        return inventory;
    }

    public void setInventory(List<EquipmentModel> inventory) {
        this.inventory = inventory;
    }

    public ArmorModel getEquippedArmor() {
        return equippedArmor;
    }

    public void setEquippedArmor(ArmorModel equippedArmor) {
        this.equippedArmor = equippedArmor;
    }

    public WeaponModel getEquippedMainHand() {
        return equippedMainHand;
    }

    public void setEquippedMainHand(WeaponModel equippedMainHand) {
        this.equippedMainHand = equippedMainHand;
    }

    public EquipmentModel getEquippedOffHand() {
        return equippedOffHand;
    }

    public void setEquippedOffHand(EquipmentModel equippedOffHand) {
        this.equippedOffHand = equippedOffHand;
    }

    public CoinPurse getCoinPurse() {
        return coinPurse;
    }

    public void setCoinPurse(CoinPurse coinPurse) {
        this.coinPurse = coinPurse;
    }

    public SubRaceModel getSubrace() {
        return subrace;
    }

    public void setSubrace(SubRaceModel subrace) {
        this.subrace = subrace;
    }

    public Long getInventoryWeight() {
        return inventoryWeight;
    }

    public void setInventoryWeight(Long inventoryWeight) {
        this.inventoryWeight = inventoryWeight;
    }

    public boolean isEncumbered() {
        return encumbered;
    }

    public void setEncumbered(boolean encumbered) {
        this.encumbered = encumbered;
    }

    public Integer getSaveDC() {
        if (getClazz() != null && getClazz().getMagicAbility() != null) {
            //TODO add prof Modifier to the save DC
            return 8 + abilities.getAbilityScore(AbilityTypeEnum.getValueOf(getClazz().getMagicAbility()));
        }
        return null;
    }

        public CharacterAdvancement getCharacterAdvancement() {
            return characterAdvancement;
        }

        public void setCharacterAdvancement(CharacterAdvancement characterAdvancement) {
            this.characterAdvancement = characterAdvancement;
        }

    public Integer getSaveDC(Long classId){
        if(getMultiClassList() != null){
            AbilityTypeEnum magicAbility = null;
            if(this.clazz.getId() == classId){
                magicAbility = AbilityTypeEnum.getValueOf(this.clazz.getMagicAbility());
            }else{
                for(ClassModel clazz : this.multiClassList){
                    if(clazz.getId() == classId){
                        magicAbility = AbilityTypeEnum.getValueOf(clazz.getMagicAbility());
                    }
                }
            }
            if(magicAbility != null && getCharacterAdvancement() != null){
                return 8 + abilities.getAbilityModifier(magicAbility) + getCharacterAdvancement().getProficiencyBonus();
            }
        }
        return null;
    };

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }

    public Abilities getAbilities() {
        return abilities;
    }

    public void setAbilities(Abilities abilities) {
        this.abilities = abilities;
    }


    public ClassModel getClazz() {
        return clazz;
    }

    public void setClazz(ClassModel clazz) {
        this.clazz = clazz;
    }

    public Integer getArmorClass() {
        return armorClass;
    }

    public void setArmorClass(Integer armorClass) {
        this.armorClass = armorClass;
    }

    public List<SpellModel> getSpellsKnown() {
        return spellsKnown;
    }

    public void setSpellsKnown(List<SpellModel> spellsKnown) {
        this.spellsKnown = spellsKnown;
    }

    public Integer getNumSpellsAllowed(){
        return this.characterAdvancement.getNumSpellsAllowed() - getNumSpellsKnown();
    }

    public SpellSlots getSpellSlots() {
        return spellSlots;
    }

    public void setSpellSlots(SpellSlots spellSlots) {
        this.spellSlots = spellSlots;
    }

    public CharacterDescription getCharacterDescription() {
        return characterDescription;
    }

    public void setCharacterDescription(CharacterDescription characterDescription) {
        this.characterDescription = characterDescription;
    }

    public List<SpellModel> getPreparedSpellList(){return this.preparedSpells;}

    public Integer getNumCantripsAllowed(){ return this.characterAdvancement.getNumCantripsAllowed() - getNumCantripsKnown();}

    public Integer getNumCantripsKnown(){
        int amt = 0;

        for(SpellModel spell: spellsKnown){
            if(spell.getLevel() == 0){
                amt++;
            }
        }

        return amt;
    }

    public Integer getNumSpellsKnown(){
        int amt = 0;

        for(SpellModel spell: spellsKnown){
            if(spell.getLevel() != 0){
                amt++;
            }
        }

        return amt;
    }

    public List<Integer> getPreparedSpells() {
        List<Integer> spells = new ArrayList<Integer>();
        for(SpellModel spell : this.preparedSpells){
            spells.add(spell.getId().intValue());
        }
        return spells;
    }

    public Integer getNumberSpellsPreparedAllowed(){
        int num = 0;
        if(null != this.clazz && null != this.clazz.getMagicAbility() ) {
            num += this.abilities.getAbilityModifier(AbilityTypeEnum.valueOf(this.clazz.getMagicAbility()));
            num += this.characterAdvancement.getTotalLevel();
        }
        return num;
    }

    public void setPreparedSpells(List<SpellModel> preparedSpells) {
        this.preparedSpells = preparedSpells;
    }
}
