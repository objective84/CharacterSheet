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

    private Map<String, Integer> initiativeRolls = new HashMap<String, Integer>();

    @RequestMapping(value="/initiative", method= RequestMethod.GET)
    public ModelAndView initiativeCalc(final Model model){
        return new ModelAndView("initiative");
    }

    @ResponseBody
    @RequestMapping(value="/submit-initiative/{name}/{initiative}", method = RequestMethod.POST)
    public Map<String, Integer> submitInitiative(@PathVariable String name, @PathVariable String initiative){
        initiativeRolls.put(name, Integer.decode(initiative));
        ValueComparator bvc = new ValueComparator(initiativeRolls);
        TreeMap<String, Integer> sorted_map = new TreeMap<String, Integer>(bvc);
        sorted_map.putAll(initiativeRolls);
        return sorted_map;
    }

    @ResponseBody
    @RequestMapping(value="/get-initiative", method = RequestMethod.POST)
    public Map<String, Integer> getInitiativeRolls(){
        ValueComparator bvc = new ValueComparator(initiativeRolls);
        Map<String, Integer> sorted_map = new TreeMap<String, Integer>(bvc);
        sorted_map.putAll(initiativeRolls);
        return sorted_map;
    }

    public class SortInitiative implements Comparator<Map.Entry<String, Integer>> {

        public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
            return o1.getValue().compareTo(o2.getValue());
        }
    }

    class ValueComparator implements Comparator<String> {

        Map<String, Integer> base;
        public ValueComparator(Map<String, Integer> base) {
            this.base = base;
        }

        // Note: this comparator imposes orderings that are inconsistent with equals.
        public int compare(String a, String b) {
            if (base.get(a) >= base.get(b)) {
                return -1;
            } else {
                return 1;
            } // returning 0 would merge keys
        }
    }

}
