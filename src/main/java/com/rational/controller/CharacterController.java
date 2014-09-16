package com.rational.controller;

import com.rational.facade.*;
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
import java.util.*;

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

    @Resource(name = "defaultAdminFacade")
    private AdminFacade adminFacade;

    @Resource(name = "defaultEquipmentFacade")
    private EquipmentFacade equipmentFacade;

    @Resource(name = "defaultRaceFacade")
    private RaceFacade raceFacade;

    @Resource(name = "defaultClassFacade")
    private ClassFacade classFacade;

    @Resource(name = "defaultSpellFacade")
    private SpellFacade spellFacade;

    @Resource(name="defaultCurrencyService")
    private CurrencyService currencyService;

    @Resource(name = "defaultLanguageFacade")
    private LanguageFacade languageFacade;

    @Resource(name="defaultAbilitiesFacade")
    private AbilitiesFacade abilitiesFacade;

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        mav.addObject("classMap", classFacade.getClassMap());
        mav.addObject("raceMap", raceFacade.getRaceMap());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute CharacterModel character, final ModelAndView mav, HttpSession session){
        mav.setViewName(REDIRECT_CHARACTER);
        if(null == character.getId()){
            character = new CharacterModel();
        }else{
            character = characterFacade.findCharacter(character.getId().toString());
        }
        session.setAttribute("character", character);
        mav.addObject("character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.GET)
    public ModelAndView character(final ModelAndView mav, HttpSession session) {
        mav.setViewName(CHARACTER);
        CharacterModel character = (CharacterModel)session.getAttribute("character");
        mav.addObject("create", true);
        if(null == character.getId()){
            character = characterFacade.save(new CharacterModel());
        }else{
            character = characterFacade.findCharacter(character.getId().toString());
            addProficienciesToModel(mav, character.getProficiencies());
        }
        mav.addObject("classes", classFacade.findAllClasses());
        mav.addObject("spellcasters", classFacade.findAllSpellcasters());
        mav.addObject("classMap", classFacade.getClassMap());
        mav.addObject("raceMap", raceFacade.getRaceMap());
        mav.addObject("races", raceFacade.findAllRaces());
        mav.addObject("languages", languageFacade.findAllLanguages());
        mav.addObject("character", character);
        addEquipmentToModel(mav, character);
        mav.addObject("abilityTypes", AbilityTypeEnum.values());
        mav.addObject("weaponFilters", EquipmentFilterEnum.getWeaponFilters());
        mav.addObject("armorFilters", EquipmentFilterEnum.getArmorFilters());
        mav.addObject("filterByProficiency", EquipmentFilterEnum.BY_PROFICIENCY.toString());
        return mav;
    }

    @RequestMapping(value="character/delete/{characterId}", method = RequestMethod.DELETE)
    public String deleteCharacter(@PathVariable String characterId){
        characterFacade.deleteCharacter(characterId);
        return "deleted";
    }

    private void addEquipmentToModel(ModelAndView mav, CharacterModel character) {
        mav.addObject("inventoryWeapons", equipmentFacade.getWeaponsFromInventory(character));
        mav.addObject("inventoryOffHandItems", equipmentFacade.getOffHandFromInventory(character));
        mav.addObject("inventoryArmor", equipmentFacade.getArmorFromInventory(character));
        mav.addObject("allWeapons", equipmentFacade.findAllWeapons());
        mav.addObject("allArmor", equipmentFacade.findAllArmor());
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute CharacterModel character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterFacade.save(character);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/character", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel getCharacter(@RequestParam(value = "characterId") String characterId){
        return characterFacade.findCharacter(characterId);
    }

    @ResponseBody
    @RequestMapping(value = "/character/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel characterFetch(@PathVariable final String characterId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        return character;
    }

    @ResponseBody
    @RequestMapping(value = "/abilities", method = RequestMethod.POST, consumes = "application/json")
    public Abilities saveAbilities(@RequestBody Abilities abilities){
        Abilities saved =  abilitiesFacade.saveAbilities(abilities);
        return saved;
    }

    @ResponseBody
    @RequestMapping(value = "/abilities/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public Abilities getAbilities(@PathVariable String characterId){
        Abilities abilities = characterFacade.findCharacter(characterId).getAbilities();
        return abilities;
    }

    @ResponseBody
    @RequestMapping(value = "/proficiencies", method = RequestMethod.GET, produces = "application/json")
    public ProficienciesForm getProficiencies(@RequestParam(value = "classId") String classId){
        return new ProficienciesForm(classFacade.getClassModel(Long.valueOf(classId)).getProficiencies());
    }

    @ResponseBody
    @RequestMapping(value="/race/{characterId}/{raceId}", method = RequestMethod.GET, produces = "application/json")
    public RaceModel getCharacterRace(@PathVariable String characterId, @PathVariable String raceId){
        RaceModel raceModel = characterFacade.findCharacter(characterId).getRace();
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
        return raceFacade.getRaceModel(raceId);
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
        SubRaceModel subrace = characterFacade.findCharacter(characterId).getSubrace();
        return subrace;
    }

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

    @RequestMapping(value="/spell/{spellId}", method =  RequestMethod.GET)
    public SpellModel getSpellText(@PathVariable String spellId){
        return spellFacade.findSpell(spellId);
    }

    @ResponseBody
    @RequestMapping(value="/availableSpells/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getSpellsForClassLevel(@PathVariable String characterId){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        spells.setData(sortBySchool(new TreeSet<SpellModel>(spellFacade.findSpells(characterId))));
        return spells;
    }

    @RequestMapping(value="/add-spell/{characterId}/{spellId}", method = RequestMethod.POST)
    public SpellModel addSpell(@PathVariable String characterId,  @PathVariable String spellId){
        return characterFacade.addSpell(characterId, spellId);
    }


    @ResponseBody
    @RequestMapping(value="/allSpells/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getAllSpells(@PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(sortBySchool(new TreeSet<SpellModel>(spellFacade.findAllSpells())));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(sortByLevel(new TreeSet<SpellModel>(spellFacade.findAllSpells())));
        }
        return spells;
    }

    @ResponseBody
    @RequestMapping(value="/classSpells/{classId}/{sortingType}", method = RequestMethod.GET, produces = "application/json")
    public ResponseData<Map<String, String>> getClassSpells(@PathVariable String classId, @PathVariable String sortingType){
        ResponseData<Map<String, String>> spells = new ResponseData<Map<String, String>>();
        if(sortingType.equalsIgnoreCase("school")){
            spells.setData(sortBySchool(new TreeSet<SpellModel>(classFacade.getClassModel(Long.decode(classId)).getSpells())));
        }else if(sortingType.equalsIgnoreCase("level")){
            spells.setData(sortByLevel(new TreeSet<SpellModel>(classFacade.getClassModel(Long.decode(classId)).getSpells())));
        }
        return spells;
    }

    private Map<String, String> sortByLevel(Set<SpellModel> spells){
        Map<String, String> spellList = new HashMap<String, String>();
        String tableStart = "<table class='spell-table side-by-side'><tr><th>School</th><th>Spell</th></tr>";
        String cantrip = tableStart;
        String one = tableStart;
        String two = tableStart;
        String three = tableStart;
        String four = tableStart;
        String five = tableStart;
        String six = tableStart;
        String seven = tableStart;
        String eight = tableStart;
        String nine = tableStart;
        String spellString;
        for(SpellModel spell : spells) {
            spellString = "<tr data-name='" + spell.getName().toLowerCase() + "' class='spell-line'><td>" + spell.getSchool() + "</td><td id='" + spell.getId() + "' class='spell-select'><span>" + spell.getName() + "</span></td></tr>";
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

        cantrip +=  "</table>";
        one += "</table>";
        two += "</table>";
        three += "</table>";
        four += "</table>";
        five += "</table>";
        six += "</table>";
        seven += "</table>";
        eight += "</table>";
        nine += "</table>";

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


    private Map<String, String> sortBySchool(Set<SpellModel> spells){
        String spellString = "";
        String tableStart = "<table class='spell-table side-by-side'><tr><th>Level</th><th>Spell</th></tr>";
        String abjuration = tableStart;
        String conjuration = tableStart;
        String divination = tableStart;
        String enchantment = tableStart;
        String evocation = tableStart;
        String illusion = tableStart;
        String necromancy = tableStart;
        String transmutation = tableStart;

        for(SpellModel spell : spells){
            spellString = "<tr data-name='" + spell.getName().toLowerCase() + "' class='spell-line'><td>" + spell.getLevel() + "</td><td id='" +
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
        abjuration += "</table>";
        conjuration += "</table>";
        divination += "</table>";
        enchantment += "</table>";
        evocation += "</table>";
        illusion += "</table>";
        necromancy += "</table>";
        transmutation += "</table>";

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
            responseData.setData(equipmentFacade.purchaseGear(Long.decode(charId), equipmentIds));
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
        return equipmentFacade.getWeaponsFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/off-hand", method = RequestMethod.GET, produces = "application/json")
    public List<EquipmentModel> getOffHand(@RequestParam(value = "characterId") String characterId){
        return equipmentFacade.getOffHandFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/armor", method = RequestMethod.GET, produces = "application/json")
    public List<ArmorModel> getArmor(@RequestParam(value = "characterId") String characterId){
        return equipmentFacade.getArmorFromInventory(characterFacade.findCharacter(characterId));
    }

    @ResponseBody
    @RequestMapping(value="/equip-main-hand", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setMainHandWeapons(@RequestParam(value = "characterId") String characterId,
                                             @RequestParam(value = "itemId") String itemId ){
        CharacterModel character = characterFacade.findCharacter(characterId);
        character.setEquippedMainHand(equipmentFacade.findWeaponModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-off-hand", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setOffHand(@RequestParam(value = "characterId") String characterId,
                                     @RequestParam(value = "itemId") String itemId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        character.setEquippedOffHand(equipmentFacade.findEquipment(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }

    @ResponseBody
    @RequestMapping(value="/equip-armor", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel setArmor(@RequestParam(value = "characterId") String characterId,
                                   @RequestParam(value = "itemId") String itemId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        characterFacade.equipArmor(characterId, itemId);
        character.setEquippedArmor(equipmentFacade.getArmorModel(Long.decode(itemId)));
        character = characterFacade.save(character);

        return character;
    }



    @RequestMapping(value="/level-up", method = RequestMethod.GET)
    public void levelUp(@ModelAttribute CharacterModel character){
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
