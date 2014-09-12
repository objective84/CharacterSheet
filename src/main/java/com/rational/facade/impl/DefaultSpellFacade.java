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
import java.util.ArrayList;
import java.util.List;

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
}
