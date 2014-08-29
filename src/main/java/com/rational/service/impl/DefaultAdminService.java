package com.rational.service.impl;

import com.google.common.collect.Lists;
import com.rational.model.Dice;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.equipment.*;
import com.rational.repository.*;
import com.rational.service.AdminService;
import org.hibernate.validator.jtype.TypeUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

@Service("defaultAdminService")
public class DefaultAdminService implements AdminService {

    @Resource
    private LanguageRepository languageRepository;

    @Resource
    private SubraceRepository subRaceRepository;

    @Resource
    private TraitRepository traitRepository;

    @Resource
    private RaceRepository raceRepository;

    @Resource
    private ProficiencyRepository proficiencyRepository;

    @Resource
    private ClassRepository classRepository;

    @Resource
    private SubClassRepository subClassRepository;

    @Resource
    private WeaponGroupRepository weaponGroupRepository;

    @Resource
    private ArmorGroupRepository armorGroupRepository;

    @Resource
    private WeaponRepository weaponRepository;

    @Resource
    private ArmorRepository armorRepository;

    @Resource
    private DiceRepository diceRepository;

    @Resource
    private CoinRepository coinRepository;

    @Resource
    private EquipmentRepository equipmentRepository;

    @Resource
    private CoinPurseRepository coinPurseRepository;

    @Resource
    private SpellRepository spellRepository;

    @Resource
    private AbilitiesRepository abilitiesRepository;



    /* Proficiencies */

    @Override
    @Transactional
    public Proficiency saveProficiency(Proficiency proficiency) {
        return proficiencyRepository.save(proficiency);
    }

    @Override
    public Proficiency findProficiency(Long id) {
        return proficiencyRepository.findOne(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return proficiencyRepository.findAll();
    }


    /* Classes */

    @Override
    @Transactional
    public ClassModel saveClass(ClassModel clazz) {
        return classRepository.save(clazz);
    }

    @Override
    public ClassModel findClass(Long id) {
        return classRepository.findOne(id);
    }

    @Override
    public List<ClassModel> findAllClasses() {
        return classRepository.findAll();
    }


    /* Sub-Classes */

    @Override
    @Transactional
    public SubClassModel saveSubClass(SubClassModel subClass) {
        return subClassRepository.save(subClass);
    }

    @Override
    public SubClassModel findSubClass(Long id) {
        return subClassRepository.findOne(id);
    }

    @Override
    public List<SubClassModel> findAllSubClasses() {
        return subClassRepository.findAll();
    }


    /* Traits */

    @Override
    @Transactional
    public TraitModel saveTrait(TraitModel trait) {
        return traitRepository.save(trait);
    }

    @Override
    public TraitModel findTrait(Long id) {return traitRepository.findOne(id);}

    @Override
    public List<TraitModel> findAllTraits() {return traitRepository.findAll();}

    @Override
    public List<TraitModel> findTraits(List<Long> traits){return Lists.newArrayList(traitRepository.findAll(traits));}


    /* Languages */

    @Override
    @Transactional
    public LanguageModel saveLanguage(LanguageModel language) {return languageRepository.save(language);}

    @Override
    public LanguageModel findLanguage(Long id) {
        return languageRepository.findOne(id);
    }

    @Override
    public List<LanguageModel> findAllLanguages() {
        return languageRepository.findAll();
    }


    /* Races */

    @Override
    @Transactional
    public RaceModel saveRace(RaceModel language) {return raceRepository.save(language);}

    @Override
    public RaceModel findRace(Long id) {
        return raceRepository.findOne(id);
    }

    @Override
    public List<RaceModel> findAllRaces() {return raceRepository.findAll();}


    /* Sub-Races */

    @Override
    @Transactional
    public SubRaceModel saveSubrace(SubRaceModel subRace) {
        return subRaceRepository.save(subRace);
    }

    @Override
    public SubRaceModel findSubrace(Long id) {
        return subRaceRepository.findOne(id);
    }

    @Override
    public List<SubRaceModel> findAllSubraces() {
        return subRaceRepository.findAll();
    }

    /* Dice */

    @Override
    @Transactional
    public Dice saveDice(Dice dice) {
        return diceRepository.save(dice);
    }

    @Override
    public Dice findDice(Long id) {
        return diceRepository.findOne(id);
    }

    @Override
    public List<Dice> findAllDice() {
        return diceRepository.findAll();
    }


    /* Weapons */

    @Override
    @Transactional
    public WeaponModel saveWeapon(WeaponModel weapon) {
        return weaponRepository.save(weapon);
    }

    @Override
    public WeaponModel findWeapon(Long id) {
        return weaponRepository.findOne(id);
    }

    @Override
    public List<WeaponModel> findAllWeapons() {
        return weaponRepository.findAll();
    }


    /* Armor */

    @Override
    @Transactional
    public ArmorModel saveArmor(ArmorModel armor) {
        return armorRepository.save(armor);
    }

    @Override
    public ArmorModel findArmor(Long id) {
        return armorRepository.findOne(id);
    }

    @Override
    public List<ArmorModel> findAllArmor() {
        return armorRepository.findAll();
    }

    @Override
    public ArmorGroup findArmorGroup(Long id) {
        return armorGroupRepository.findOne(id);
    }

    @Override
    public List<ArmorGroup> findAllArmorGroups() {
        return armorGroupRepository.findAll();
    }


    @Override
    public WeaponGroup findWeaponGroup(Long id) {
        return weaponGroupRepository.findOne(id);
    }

    @Override
    public List<WeaponGroup> findAllWeaponGroups() {
        return weaponGroupRepository.findAll();
    }

    @Override
    public Coin findCoin(Long id) {
        return coinRepository.findOne(id);
    }

    @Override
    public Coin findCoinByType(CoinTypeEnum type){
        List<Coin> allCoins = coinRepository.findAll();

        for(Coin coin : allCoins){
            if(coin.getDenomination() == type.getType()){
                return coin;
            }
        }
        return null;
    }

    @Override
    public List<Coin> findAllCoins() {
        return coinRepository.findAll();
    }

    @Override
    public Coin findCoinByName(String name){return coinRepository.findCoinByName(name);}

    @Override
    public List<EquipmentModel> findEquipment(List<Long> ids) {
        return Lists.newArrayList(equipmentRepository.findAll(ids));
    }

    @Override
    public EquipmentModel findEquipment(Long id) {
        return equipmentRepository.findOne(id);
    }

    @Override
    public CoinPurse saveCoinPurse(CoinPurse purse){
        return coinPurseRepository.save(purse);
    }

    @Override
    public SpellModel saveSpell(SpellModel spell){
        return spellRepository.save(spell);
    }

    @Override
    public SpellModel findSpell(Long id){
        return spellRepository.findOne(id);
    }

    @Override
    public List<SpellModel> findAllSpells(){
        return spellRepository.findAll();
    }

    @Override
    public List<EquipmentModel> findEquipmentOfType(Type type) {
        List<EquipmentModel> equipmentModels = equipmentRepository.findAll();
        List<EquipmentModel> temp = new ArrayList<EquipmentModel>(equipmentModels);
        for(EquipmentModel model : temp){
            if(!TypeUtils.isInstance(type, model)){
                equipmentModels.remove(model);
            }
        }
        return equipmentModels;
    }

    @Override
    public List<EquipmentModel> findAllEquipment(){
        return equipmentRepository.findAll();
    }

    @Override
    public Abilities saveAbilities(Abilities abilities) {
        return abilitiesRepository.save(abilities);
    }

    @Override
    public Abilities findAbilities(Long id) {
        return abilitiesRepository.findOne(id);
    }

}
