package com.rational.controller;

import com.rational.facade.CharacterFacade;
import com.rational.facade.EquipmentFacade;
import com.rational.forms.ResponseData;
import com.rational.model.entities.CharacterModel;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import com.rational.model.exceptions.PurchaseException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class EquipmentController {

    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource(name = "defaultEquipmentFacade")
    private EquipmentFacade equipmentFacade;

    private static final String PURCHASE_SUCCESS = "Your purchase was successful!";

    @ResponseBody
    @RequestMapping(value="/filterEquipmentByProficiency", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<List<EquipmentModel>> filterEquipment(@RequestParam(value = "characterId") String characterId,
                                                              @RequestParam(value= "filter") String filter){
        ResponseData<List<EquipmentModel>> responseData = new ResponseData<List<EquipmentModel>>();

        if(filter.equals("true"))
        {
            responseData.setData(equipmentFacade.filterByProficiency(characterId));
        }else{
            responseData.setData(equipmentFacade.getAllEquipmentModels());
        }

        return responseData;
    }

    @ResponseBody
    @RequestMapping(value="/equipment/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<CharacterModel> saveInventory(@PathVariable String characterId, @RequestParam(value = "ids") String ids){
        ResponseData<CharacterModel> responseData = new ResponseData<CharacterModel>();
        Set<Long> equipmentIds = new HashSet<Long>();
        try {
            JSONObject obj = new JSONObject(ids);
            JSONArray array = obj.getJSONArray("equipmentIds");

            for(int i=0; i< array.length(); i++){
                equipmentIds.add(Long.decode(array.getString(i)));
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        try {
            responseData.setData(equipmentFacade.purchaseGear(Long.decode(characterId), equipmentIds));
            responseData.setCode(ResponseData.SUCCESS_CODE);
            responseData.setMessage(PURCHASE_SUCCESS);
        } catch (PurchaseException e) {
            responseData.setCode(ResponseData.FAILURE_CODE);
            responseData.setErrorMessage(e.getMessage());
        }

        return responseData;
    }

    @ResponseBody
    @RequestMapping(value="/main-hand/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public List<WeaponModel> getMainHandWeapons(@PathVariable String characterId){
        return equipmentFacade.getWeaponsFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/off-hand/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public List<EquipmentModel> getOffHand(@PathVariable String characterId){
        return equipmentFacade.getOffHandFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/armor/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public List<ArmorModel> getArmor(@PathVariable String characterId){
        return equipmentFacade.getArmorFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/equip-main-hand/{characterId}/{itemId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setMainHandWeapons(@PathVariable String characterId, @PathVariable String itemId ){
        CharacterModel character = characterFacade.findCharacter(characterId);
        character.setEquippedMainHand(equipmentFacade.findWeaponModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-off-hand/{characterId}/{itemId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setOffHand(@PathVariable String characterId, @PathVariable String itemId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        character.setEquippedOffHand(equipmentFacade.findEquipment(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-armor/{characterId}/{itemId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setArmor(@PathVariable String characterId, @PathVariable String itemId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        characterFacade.equipArmor(characterId, itemId);
        character.setEquippedArmor(equipmentFacade.getArmorModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }
}
