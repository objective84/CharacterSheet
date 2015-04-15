package com.rational.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by PHowland on 4/1/2015.
 */
@Controller
public class InitiativeController {

    private Map<String, Map<String, String>> initiativeRolls = new HashMap<String, Map<String, String>>();

    @RequestMapping(value="/initiative", method= RequestMethod.GET)
    public ModelAndView initiativeCalc(final Model model){
        return new ModelAndView("initiative");
    }

    @ResponseBody
    @RequestMapping(value="/submit-initiative/{name}/{initiative}/{dex}/{size}/{action}", method = RequestMethod.POST)
    public Map<String, Map<String, String>> submitInitiative(@PathVariable String name, @PathVariable String initiative, @PathVariable String dex, @PathVariable String size, @PathVariable String action){
        if(initiativeRolls.containsKey(name) && (initiativeRolls.get(name).get("reroll") == "no")){
            return null;
        }
        Map<String, String> details = new HashMap<String, String>();
        details.put("initiative", initiative);
        details.put("dex", dex);
        details.put("size", size);
        details.put("action", action);
        details.put("reroll", "no");
        initiativeRolls.put(name, details);
        ValueComparator bvc = new ValueComparator(initiativeRolls);
        TreeMap<String, Map<String, String>> sorted_map = new TreeMap<String, Map<String, String>>(bvc);
        sorted_map.putAll(initiativeRolls);
        return sorted_map;
    }

    @RequestMapping(value="/reroll/{name}", method = RequestMethod.GET)
    public void releaseForReRoll(@PathVariable String name){
        initiativeRolls.get(name).put("reroll", "yes");
    }

    @ResponseBody
    @RequestMapping(value="/get-initiative", method = RequestMethod.POST)
    public Map<String, Map<String, String>> getInitiativeRolls(){
        ValueComparator bvc = new ValueComparator(initiativeRolls);
        Map<String, Map<String, String>> sorted_map = new TreeMap<String, Map<String, String>>(bvc);
        sorted_map.putAll(initiativeRolls);
        return sorted_map;
    }

    @RequestMapping(value="/clear-initiative", method = RequestMethod.GET)
    public void clearInitiative(){
        initiativeRolls.clear();
    }

    public class SortInitiative implements Comparator<Map.Entry<String, Integer>> {

        public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
            return o1.getValue().compareTo(o2.getValue());
        }
    }

    class ValueComparator implements Comparator<String> {

        Map<String, Map<String, String>>base;
        public ValueComparator(Map<String, Map<String, String>> base) {
            this.base = base;
        }

        // Note: this comparator imposes orderings that are inconsistent with equals.
        public int compare(String a, String b) {
            if (Integer.decode(base.get(a).get("initiative")) == (Integer.decode(base.get(b).get("initiative")))) {
                if (Integer.decode(base.get(a).get("dex")) >= (Integer.decode(base.get(b).get("dex")))) {
                    return -1;
                }else{
                    return 1;
                }
            } else if (Integer.decode(base.get(a).get("initiative")) > (Integer.decode(base.get(b).get("initiative")))) {
                return -1;
            } else {
                return 1;
            } // returning 0 would merge keys
        }
    }

}
