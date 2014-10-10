package com.rational.facade.impl;

import com.rational.facade.SpellFacade;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.Level;
import com.rational.model.entities.SpellModel;
import com.rational.service.CharacterService;
import com.rational.service.ClassService;
import com.rational.service.SpellService;
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

    @Override
    public SpellModel findSpell(String spellId) {
        return spellService.findSpell(Long.decode(spellId));
    }

    @Override
    public List<SpellModel> findSpells(String characterId) {
        CharacterModel character = characterService.findCharacter(Long.decode(characterId));
        ClassModel clazz = character.getClazz();
        List<SpellModel> spells = new ArrayList<SpellModel>();
        Level classLevel = classService.findLevel(character.getClazz().getId(), 1);//character.getCharacterAdvancement().getLevelsOfClass(clazz));
        Integer highestSpellsSlot = getHighestSpellSlot(classLevel);
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


    private Integer getHighestSpellSlot(Level level){
        if(level.getNinthLevelSpellSlots() > 0){
            return 9;
        }
        if(level.getEighthLevelSpellSlots() > 0){
            return 8;
        }
        if(level.getSeventhLevelSpellSlots() > 0){
            return 7;
        }
        if(level.getSixthLevelSpellSlots() > 0){
            return 6;
        }
        if(level.getFifthLevelSpellSlots() > 0){
            return 5;
        }
        if(level.getFourthLevelSpellSlots() > 0){
            return 4;
        }
        if(level.getThirdLevelSpellSlots() > 0){
            return 3;
        }
        if(level.getSecondLevelSpellSlots() > 0){
            return 2;
        }
        if(level.getFirstLevelSpellSlots() > 0){
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

        cantrip = splitTable(cantrip);
        one = splitTable(one);
        two = splitTable(two);
        three = splitTable(three);
        four = splitTable(four);
        five = splitTable(five);
        six = splitTable(six);
        seven = splitTable(seven);
        eight = splitTable(eight);
        nine = splitTable(nine);

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
        abjuration = splitTable(abjuration);
        conjuration = splitTable(conjuration);
        divination = splitTable(divination);
        enchantment = splitTable(enchantment);
        evocation = splitTable(evocation);
        illusion = splitTable(illusion);
        necromancy = splitTable(necromancy);
        transmutation = splitTable(transmutation);

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

    private String splitTable(String table){
        String tableStart = "<table class='spell-table side-by-side'><tr><th>Level</th><th>Spell</th></tr>";
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
