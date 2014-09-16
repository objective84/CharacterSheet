package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ClassFacade;
import com.rational.model.entities.ClassModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class ClassController {

    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @ResponseBody
    @RequestMapping(value="/class/{characterId}/{classId}", method = RequestMethod.POST, produces = "application/json")
    public ClassModel setCharacterClass(@PathVariable String characterId, @PathVariable String classId){
        ClassModel clazz = characterFacade.setCharacterClass(characterId, classId);
        return clazz;
    }

    @ResponseBody
    @RequestMapping(value="/class/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ClassModel getCharacterClass(@PathVariable String characterId){
        ClassModel clazz = characterFacade.findCharacter(characterId).getClazz();
        return clazz;
    }
}
