package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.ClassFacade;
import com.rational.forms.ResponseData;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.SubClassModel;
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

    @Resource(name="defaultClassFacade")
    private ClassFacade classFacade;



    @ResponseBody
    @RequestMapping(value="/class/{characterId}/{classId}", method = RequestMethod.POST, produces = "application/json")
    public ClassModel setCharacterClass(@PathVariable String characterId, @PathVariable String classId){
        return characterFacade.setCharacterClass(characterId, classId);
    }

    @ResponseBody
    @RequestMapping(value="/class/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ClassModel getCharacterClass(@PathVariable String characterId){
        return characterFacade.findCharacter(characterId).getClazz();
    }


    @ResponseBody
    @RequestMapping(value="/subclass/{characterId}/{subclassId}", method = RequestMethod.POST, produces = "application/json")
    public SubClassModel setCharacterSubClass(@PathVariable String characterId, @PathVariable String subclassId){
        return characterFacade.setCharacterSubClass(characterId, subclassId);
    }

    @ResponseBody
    @RequestMapping(value="/subclass/select/{classId}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<String> getSubClassSelectionHTML(@PathVariable String classId){
        ResponseData<String> responseData = new ResponseData<String>();
        responseData.setData(classFacade.getSubclassChoiceHtml(classId));
        return responseData;
    }
}
