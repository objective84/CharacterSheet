package com.rational.controller;

import com.rational.converters.EquipmentConverter;
import com.rational.facade.AdminFacade;
import com.rational.facade.CharacterFacade;
import com.rational.forms.Character;
import com.rational.forms.ProficienciesForm;
import com.rational.forms.ResponseData;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.enums.EquipmentFilterEnum;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import com.rational.model.exceptions.PurchaseException;
import com.rational.service.CurrencyService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class CharacterController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";

    private static final String CHARACTER_LIST = "characterlist";
    private static final String CHARACTER = "character-sheet";

    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST + REDIRECT_SUFFIX;
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER + REDIRECT_SUFFIX;

    private static final String PURCHASE_SUCCESS = "Your purchase was successful!";



    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource
    private AdminFacade adminFacade;

    @Resource(name="defaultCurrencyService")
    private CurrencyService currencyService;

    @Resource
    private EquipmentConverter equipmentConverter;

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        mav.addObject("classMap", adminFacade.getClassMap());
        mav.addObject("raceMap", adminFacade.getRaceMap());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute Character character, final Model model, HttpSession session){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER);
        if("delete".equals(character.getName())){
            characterFacade.deleteCharacter(character.getId());
            mav.setViewName(REDIRECT_CHARACTER_LIST);
            character = new Character();
        }else if(null == character.getId()){
            character = new Character();
        }else{
            character = characterFacade.findCharacter(character.getId());
        }
        session.setAttribute("character", character);
        mav.addObject("character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.GET)
    public ModelAndView character(final Model model, HttpSession session) {
        ModelAndView mav = new ModelAndView(CHARACTER);
        Character character = (Character)session.getAttribute("character");
        CharacterModel characterModel;
        mav.addObject("create", true);
        if(null == character.getId()){
            characterModel = characterFacade.save(new Character());
            character.setId(characterModel.getId());
        }else{
            characterModel = characterFacade.getCharacterModel(character.getId());
            addProficienciesToModel(mav, characterModel.getProficiencies());
        }
        mav.addObject("classes", adminFacade.findAllClasses());
        mav.addObject("classMap", adminFacade.getClassMap());
        mav.addObject("raceMap", adminFacade.getRaceMap());
        mav.addObject("races", adminFacade.findAllRaces());
        mav.addObject("languages", adminFacade.findAllLanguages());
        mav.addObject("character", characterModel);
        addEquipmentToModel(mav, characterModel);
//        mav.addObject("character", character);
        mav.addObject("abilityTypes", AbilityTypeEnum.values());
        mav.addObject("weaponFilters", EquipmentFilterEnum.getWeaponFilters());
        mav.addObject("armorFilters", EquipmentFilterEnum.getArmorFilters());
        mav.addObject("filterByProficiency", EquipmentFilterEnum.BY_PROFICIENCY.toString());
        return mav;
    }

    private void addEquipmentToModel(ModelAndView mav, CharacterModel character) {
        mav.addObject("inventoryWeapons", adminFacade.getWeaponsFromInventory(character));
        mav.addObject("inventoryOffHandItems", adminFacade.getOffHandFromInventory(character));
        mav.addObject("inventoryArmor", adminFacade.getArmorFromInventory(character));
        mav.addObject("allWeapons", adminFacade.findAllWeaponModels());
        mav.addObject("allArmor", adminFacade.findAllArmorModels());
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute Character character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterFacade.save(character);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/character", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel getCharacter(@RequestParam(value = "characterId") String characterId){
        return characterFacade.getCharacterModel(Long.valueOf(characterId));
    }

    @ResponseBody
    @RequestMapping(value = "/character/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel characterFetch(@PathVariable final String characterId){
        return characterFacade.getCharacterModel(Long.valueOf(characterId));
    }

    @ResponseBody
    @RequestMapping(value = "/abilities", method = RequestMethod.POST, consumes = "application/json")
    public Abilities saveAbilities(@RequestBody Abilities abilities){
        Abilities saved =  adminFacade.saveAbilities(abilities);
        return saved;
    }

    @ResponseBody
    @RequestMapping(value = "/abilities/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public Abilities getAbilities(@PathVariable String characterId){
        Abilities abilities = characterFacade.findAbilities(characterId);
        return abilities;
    }

    @RequestMapping(value = "/delete-character", method = RequestMethod.GET)
    public String deleteCharacter(@RequestParam(value = "characterId") String characterId){
        characterFacade.deleteCharacter(Long.valueOf(characterId));
        return "deleted";
    }

    @ResponseBody
    @RequestMapping(value = "/proficiencies", method = RequestMethod.GET, produces = "application/json")
    public ProficienciesForm getProficiencies(@RequestParam(value = "classId") String classId){
        return new ProficienciesForm(adminFacade.getClassModel(Long.valueOf(classId)).getProficiencies());
    }

    @ResponseBody
    @RequestMapping(value="/race/{characterId}/{raceId}", method = RequestMethod.GET, produces = "application/json")
    public RaceModel getCharacterRace(@PathVariable String characterId, @PathVariable String raceId){
        RaceModel raceModel = characterFacade.getCharacterModel(Long.decode(characterId)).getRace();
        return raceModel;
    }

    @ResponseBody
    @RequestMapping(value="/race/{characterId}/{raceId}", method = RequestMethod.POST)
    public RaceModel setCharacterRace(@PathVariable String characterId, @PathVariable String raceId){
        RaceModel race = characterFacade.setCharacterRace(characterId, raceId);
        return race;
    }

    @ResponseBody
    @RequestMapping(value="/race/{raceId}", method = RequestMethod.GET, produces = "application/json")
    public RaceModel fetchRace(@PathVariable String raceId){
        return adminFacade.getRaceModel(raceId);
    }

    @ResponseBody
    @RequestMapping(value="/subrace/{characterId}/{subraceId}", method = RequestMethod.POST, produces = "application/json")
    public SubRaceModel setCharacterSubRace(@PathVariable String characterId, @PathVariable String subraceId){
        SubRaceModel subrace = characterFacade.setCharacterSubrace(characterId, subraceId);;
        return subrace;
    }

    @ResponseBody
    @RequestMapping(value="/subrace/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public SubRaceModel getCharacterSubRace(@PathVariable String characterId){
        SubRaceModel subrace = characterFacade.getCharacterSubrace(characterId);
        return subrace;
    }

    @ResponseBody
    @RequestMapping(value="/class/{characterId}/{classId}", method = RequestMethod.POST, produces = "application/json")
    public ClassModel setCharacterClass(@PathVariable String characterId, @PathVariable String classId){
        ClassModel clazz = characterFacade.setCharacterClass(Long.valueOf(characterId), Long.valueOf(classId));
        return clazz;
    }

    @ResponseBody
    @RequestMapping(value="/class/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ClassModel getCharacterClass(@PathVariable String characterId){
        ClassModel clazz = characterFacade.getCharacterClass(characterId);
        return clazz;
    }











































    @ResponseBody
    @RequestMapping(value="/filterEquipmentByProficiency", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<List<EquipmentModel>> filterEquipment(@RequestParam(value = "characterId") String characterId,
                                                              @RequestParam(value= "filter") String filter){
        ResponseData<List<EquipmentModel>> responseData = new ResponseData<List<EquipmentModel>>();

        if(filter.equals("true"))
        {
            responseData.setData(characterFacade.filterByProficiency(characterId));
        }else{
            responseData.setData(adminFacade.getAllEquipmentModels());
        }

        return responseData;
    }

    @ResponseBody
    @RequestMapping(value="/equipment", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<CharacterModel> saveInventory(@RequestParam(value = "ids") String ids){
        ResponseData<CharacterModel> responseData = new ResponseData<CharacterModel>();
        Set<Long> equipmentIds = new HashSet<Long>();
        String charId = "";
        try {
            JSONObject obj = new JSONObject(ids);
            charId = obj.getString("charId");
            JSONArray array = obj.getJSONArray("equipmentIds");

            for(int i=0; i< array.length(); i++){
                equipmentIds.add(Long.decode(array.getString(i)));
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        try {
            responseData.setData(characterFacade.purchaseGear(Long.decode(charId), equipmentIds));
            responseData.setCode(ResponseData.SUCCESS_CODE);
            responseData.setMessage(PURCHASE_SUCCESS);
        } catch (PurchaseException e) {
            responseData.setCode(ResponseData.FAILURE_CODE);
            responseData.setErrorMessage(e.getMessage());
        }

        return responseData;
    }

    @ResponseBody
    @RequestMapping(value="/main-hand", method = RequestMethod.GET, produces = "application/json")
    public List<WeaponModel> getMainHandWeapons(@RequestParam(value = "characterId") String characterId){
        return adminFacade.getWeaponsFromInventory(characterFacade.getCharacterModel(Long.decode(characterId)));
    }

    @ResponseBody
    @RequestMapping(value="/off-hand", method = RequestMethod.GET, produces = "application/json")
    public List<EquipmentModel> getOffHand(@RequestParam(value = "characterId") String characterId){
        return adminFacade.getOffHandFromInventory(characterFacade.getCharacterModel(Long.decode(characterId)));
    }

    @ResponseBody
    @RequestMapping(value="/armor", method = RequestMethod.GET, produces = "application/json")
    public List<ArmorModel> getArmor(@RequestParam(value = "characterId") String characterId){
        return adminFacade.getArmorFromInventory(characterFacade.getCharacterModel(Long.decode(characterId)));
    }

    @ResponseBody
    @RequestMapping(value="/equip-main-hand", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setMainHandWeapons(@RequestParam(value = "characterId") String characterId,
                                             @RequestParam(value = "itemId") String itemId ){
        CharacterModel character = characterFacade.getCharacterModel(Long.decode(characterId));
        character.setEquippedMainHand(adminFacade.findWeaponModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-off-hand", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setOffHand(@RequestParam(value = "characterId") String characterId,
                                     @RequestParam(value = "itemId") String itemId){
        CharacterModel character = characterFacade.getCharacterModel(Long.decode(characterId));
        character.setEquippedOffHand(adminFacade.findEquipment(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-armor", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setArmor(@RequestParam(value = "characterId") String characterId,
                                   @RequestParam(value = "itemId") String itemId){
        CharacterModel character = characterFacade.getCharacterModel(Long.decode(characterId));
        characterFacade.equipArmor(characterId, itemId);
        character.setEquippedArmor(adminFacade.getArmorModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }



    @RequestMapping(value="/level-up", method = RequestMethod.GET)
    public void levelUp(@ModelAttribute Character character){
        characterFacade.levelUp(character);
    }

    @ResponseBody
    public CoinPurse convertCurrency(@RequestParam(value="from") String from,
                                     @RequestParam(value="to") String to,
                                     @RequestParam(value="amt") String amt){
        return new CoinPurse();
    }


    private void addProficienciesToModel(ModelAndView mav, Set<Proficiency> proficiencies){
        List<Proficiency> skills = new ArrayList<Proficiency>();
        List<Proficiency> tools = new ArrayList<Proficiency>();
        List<Proficiency> weapons = new ArrayList<Proficiency>();
        List<Proficiency> armor = new ArrayList<Proficiency>();
        List<Proficiency> saves = new ArrayList<Proficiency>();

        for(Proficiency proficiency : proficiencies){
            switch (proficiency.getProficiencyType()){
                case SKILL:
                    skills.add(proficiency);
                    break;
                case TOOL:
                    tools.add(proficiency);
                    break;
                case WEAPON:
                    weapons.add(proficiency);
                    break;
                case ARMOR:
                    armor.add(proficiency);
                    break;
                case SAVE:
                    saves.add(proficiency);
                    break;
            }

            mav.addObject("skillProficiencies", skills);
            mav.addObject("toolProficiencies", tools);
            mav.addObject("weaponProficiencies", weapons);
            mav.addObject("armorProficiencies", armor);
            mav.addObject("savingThrowProficiencies", saves);
        }
    }
}
