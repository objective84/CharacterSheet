package com.rational.facade.impl;

import com.rational.facade.SpellFacade;
import com.rational.forms.SpellCastData;
import com.rational.model.Dice;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.SpellModel;
import com.rational.model.entities.SpellSlots;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.enums.DieTypeEnum;
import com.rational.model.enums.SpellSearchParam;
import com.rational.model.exceptions.SpellCastException;
import com.rational.service.CharacterService;
import com.rational.service.ClassService;
import com.rational.service.DiceService;
import com.rational.service.SpellService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;

@Component("defaultSpellFacade")
public class DefaultSpellFacade implements SpellFacade {

    @Resource(name = "defaultSpellService")
    private SpellService spellService;

    @Resource(name = "defaultCharacterService")
    private CharacterService characterService;

    @Resource(name = "defaultClassService")
    private ClassService classService;

    @Resource(name = "defaultDiceService")
    private DiceService diceService;

    @Override
    public SpellModel findSpell(String spellId) {
        return spellService.findSpell(Long.decode(spellId));
    }

    @Override
    public List<SpellModel> findSpells(String characterId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));

        ClassModel clazz = character.getClazz();
        List<SpellModel> spells = new ArrayList<SpellModel>();
        Integer highestSpellsSlot = getHighestSpellSlot(character.getSpellSlots());
        if(highestSpellsSlot > 0){
            for(SpellModel spell : clazz.getSpells()){
                if(spell.getLevel() <= highestSpellsSlot){
                    spells.add(spell);
                }
            }
        }
        return spells;
    }

    @Override
    public List<SpellModel> findAllSpells() {
        return spellService.findAllSpells();
    }


    private Integer getHighestSpellSlot(SpellSlots spellSlots){
        if(spellSlots.getPerDayNine() > 0){
            return 9;
        }
        if(spellSlots.getPerDayEight() > 0){
            return 8;
        }
        if(spellSlots.getPerDaySeven() > 0){
            return 7;
        }
        if(spellSlots.getPerDaySix() > 0){
            return 6;
        }
        if(spellSlots.getPerDayFive() > 0){
            return 5;
        }
        if(spellSlots.getPerDayFour() > 0){
            return 4;
        }
        if(spellSlots.getPerDayThree() > 0){
            return 3;
        }
        if(spellSlots.getPerDayTwo() > 0){
            return 2;
        }
        if(spellSlots.getPerDayOne() > 0){
            return 1;
        }
        return 0;
    }


    @Override
    public Map<String, String> sortByLevel(Set<SpellModel> spells){
        Map<String, String> spellList = new HashMap<String, String>();
        String tableStart = "<table class='spell-table side-by-side'><tr><th>School</th><th>Spell</th></tr>";
        String tableEnd = "</table>";
        String cantrip = "";
        String one = "";
        String two = "";
        String three = "";
        String four = "";
        String five = "";
        String six = "";
        String seven = "";
        String eight = "";
        String nine = "";
        String spellString;
        for(SpellModel spell : spells) {
            spellString = "<tr data-name='" + spell.getName().toLowerCase() + "' class='spell-line visible'><td>" + spell.getSchool().substring(0, 3) + "</td><td id='" + spell.getId() + "' class='spell-select'><span>" + spell.getName() + "</span></td></tr>";
            switch (spell.getLevel()){
                case 0: cantrip += spellString; break;
                case 1: one += spellString; break;
                case 2: two += spellString; break;
                case 3: three += spellString; break;
                case 4: four += spellString; break;
                case 5: five += spellString; break;
                case 6: six += spellString; break;
                case 7: seven += spellString; break;
                case 8: eight += spellString; break;
                case 9: nine += spellString; break;
            }
        }

        cantrip = splitTable(cantrip, "School");
        one = splitTable(one, "School");
        two = splitTable(two, "School");
        three = splitTable(three, "School");
        four = splitTable(four, "School");
        five = splitTable(five, "School");
        six = splitTable(six, "School");
        seven = splitTable(seven, "School");
        eight = splitTable(eight, "School");
        nine = splitTable(nine, "School");

        if(cantrip.contains("spell-line"))spellList.put("cantrip", cantrip);
        if(one.contains("spell-line"))spellList.put("one", one);
        if(two.contains("spell-line"))spellList.put("two", two);
        if(three.contains("spell-line"))spellList.put("three", three);
        if(four.contains("spell-line"))spellList.put("four", four);
        if(five.contains("spell-line"))spellList.put("five", five);
        if(six.contains("spell-line"))spellList.put("six", six);
        if(seven.contains("spell-line"))spellList.put("seven", seven);
        if(eight.contains("spell-line"))spellList.put("eight", eight);
        if(nine.contains("spell-line"))spellList.put("nine", nine);

        return spellList;
    }


    @Override
    public Map<String, String> sortBySchool(Set<SpellModel> spells){
        String spellString = "";
        String abjuration = "";
        String conjuration = "";
        String divination = "";
        String enchantment = "";
        String evocation = "";
        String illusion = "";
        String necromancy = "";
        String transmutation = "";

        for(SpellModel spell : spells){
            spellString = "<tr data-name='" + spell.getName().toLowerCase() + "' class='spell-line visible'><td>" + spell.getLevel() + "</td><td id='" +
                    spell.getId() + "' class='spell-select'><span>" + spell.getName() + "</span></td></tr>";
            if(spell.getSchool().equalsIgnoreCase("abjuration"))abjuration += spellString;
            else if(spell.getSchool().equalsIgnoreCase("conjuration"))conjuration += spellString;
            else if(spell.getSchool().equalsIgnoreCase("divination"))divination += spellString;
            else if(spell.getSchool().equalsIgnoreCase("enchantment"))enchantment += spellString;
            else if(spell.getSchool().equalsIgnoreCase("evocation"))evocation += spellString;
            else if(spell.getSchool().equalsIgnoreCase("illusion"))illusion += spellString;
            else if(spell.getSchool().equalsIgnoreCase("necromancy"))necromancy += spellString;
            else if(spell.getSchool().equalsIgnoreCase("transmutation"))transmutation += spellString;
        }
        abjuration = splitTable(abjuration, "Level");
        conjuration = splitTable(conjuration, "Level");
        divination = splitTable(divination, "Level");
        enchantment = splitTable(enchantment, "Level");
        evocation = splitTable(evocation, "Level");
        illusion = splitTable(illusion, "Level");
        necromancy = splitTable(necromancy, "Level");
        transmutation = splitTable(transmutation, "Level");

        Map<String, String> spellList = new HashMap<String, String>();
        if(abjuration.contains("spell-line"))spellList.put("abjuration", abjuration);
        if(conjuration.contains("spell-line"))spellList.put("conjuration", conjuration);
        if(divination.contains("spell-line"))spellList.put("divination", divination);
        if(enchantment.contains("spell-line"))spellList.put("enchantment", enchantment);
        if(evocation.contains("spell-line"))spellList.put("evocation", evocation);
        if(illusion.contains("spell-line"))spellList.put("illusion", illusion);
        if(necromancy.contains("spell-line"))spellList.put("necromancy", necromancy);
        if(transmutation.contains("spell-line"))spellList.put("transmutation", transmutation);
        return spellList;
    }

    @Override
    public void learnSpells(String characterId, String[] spellIds) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        for(String spell : spellIds){
            character.getSpellsKnown().add(spellService.findSpell(Long.decode(spell)));
        }
        characterService.save(character);
    }

    @Override
    public SpellModel prepareSpell(String characterId, String spellId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        SpellModel spell = spellService.findSpell(Long.decode(spellId));
        character.getPreparedSpellList().add(spell);
        characterService.save(character);
        return spell;
    }

    @Override
    public SpellModel unPrepareSpell(String characterId, String spellId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        SpellModel spell = spellService.findSpell(Long.decode(spellId));
        character.getPreparedSpellList().remove(spell);
        characterService.save(character);
        return spell;    }

    @Override
    public SpellCastData castSpell(String characterId, String spellId) throws SpellCastException {
        SpellCastData data = new SpellCastData();
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        SpellModel spell = spellService.findSpell(Long.decode(spellId));
        if(spell.getLevel() != 0 && character.getSpellSlots().getSpellSlotRemaining(spell.getLevel()) <= 0){
            throw new SpellCastException("You do not have the required spell slot to cast this spell.");
        }
        data.setSpellName(spell.getName());

        if(spell.isRequiresAttackRoll()){
            Dice d20 = diceService.findDice(DieTypeEnum.d20.getId());
            int[] dieResults = diceService.rollSeparateDice(d20, (spell.getNumAttacks() != 0 ? spell.getNumAttacks() : 1 ));
            data.setMagicAbilityMod(character.getAbilities().getAbilityModifier(AbilityTypeEnum.valueOf(character.getClazz().getMagicAbility())));
            data.setMagicAbility(character.getClazz().getMagicAbility());
            data.setProficiencyBonus(character.getCharacterAdvancement().getProficiencyBonus());
            data.setToHitRolls(dieResults);
        }else if(StringUtils.isNotEmpty(spell.getSavingThrow())){
            data.setSaveType(spell.getSavingThrow());
            data.setSaveDC(character.getSaveDC());
        }

        if(null != spell.getDamageDice()){
            data.setDamage(diceService.rollSeparateDice(spell.getDamageDice(), spell.getDamageDiceAmount()));
            int total = 0;
            for(int roll : data.getDamage()){
                total += roll;
            }
            data.setTotalDamage(total);
            data.setDamageDie(spell.getDamageDice().getName());
        }

        if(null != spell.getDamageType()){
            data.setDamageType(spell.getDamageType().getName());
        }
        character.getSpellSlots().setSpellSlotExpended(spell.getLevel(), character.getSpellSlots().getSpellSlotExpended(spell.getLevel())+1);
        characterService.save(character);
        return data;
    }

    @Override
    public Set<SpellModel> textSearch(String text) {
        List<String> textSearchParams = Arrays.asList(text.split(","));

        Map<SpellSearchParam, List<String>> params = new HashMap<SpellSearchParam, List<String>>();
        params.put(SpellSearchParam.DESCRIPTION, textSearchParams);
        params.put(SpellSearchParam.NAME, textSearchParams);

        return spellService.customSearch(params);
    }

    @Override
    public Set<SpellModel> advancedSearch(Map<String, String> params) {
        Map<SpellSearchParam, List<String>> paramsMap = new HashMap<SpellSearchParam, List<String>>();
        for(String param : params.keySet()){
            if(param.equalsIgnoreCase("name")){
                paramsMap.put(SpellSearchParam.NAME, Arrays.asList(params.get(param).split(",")));
            }else if(param.equals("description")){
                paramsMap.put(SpellSearchParam.DESCRIPTION, Arrays.asList(params.get(param).split(",")));
            }else if(param.equals("level")){
                paramsMap.put(SpellSearchParam.LEVEL, Arrays.asList(params.get(param).split(",")));
            }else if(param.equals("class")){

            }else if(param.equals("save")){
                paramsMap.put(SpellSearchParam.SAVE, Arrays.asList(params.get(param)));
            }else if(param.equals("verbal")){
                paramsMap.put(SpellSearchParam.VERBAL_COMPONENTS, Arrays.asList("true"));
            }else if(param.equals("somatic")){
                paramsMap.put(SpellSearchParam.SOMATIC_COMPONENTS, Arrays.asList("true"));
            }else if(param.equals("material")){
                paramsMap.put(SpellSearchParam.MATERIAL_COMPONENTS, Arrays.asList("true"));
            }else if(param.equals("attack")){
                paramsMap.put(SpellSearchParam.ATTACK, Arrays.asList("true"));
            }else if(param.equals("ritual")){
                paramsMap.put(SpellSearchParam.RITUAL, Arrays.asList("true"));
            }else if(param.equals("concentration")){
                paramsMap.put(SpellSearchParam.CONCENTRATION, Arrays.asList("true"));
            }
        }
        return spellService.customSearch(paramsMap);
    }

    private String splitTable(String table, String type){
        String tableStart = "<table class='spell-table side-by-side'><tr><th>" + type + "</th><th>Spell</th></tr>";
        String tableEnd = "</table>";
        String newTable = tableStart;
        String[] rows = table.split("</span></td></tr>");
        int count = 1;

        for(int i=0; i<rows.length; i++){
            String row = rows[i];
            row = row.concat("</span></td></tr>");
            if(count%30 == 0){
                row = row.concat(tableEnd + tableStart);
                count = 1;
            }else{
                count++;
            }
            newTable = newTable.concat(row);
        }
            newTable = newTable.concat(tableEnd);
        return newTable;
    }
}
