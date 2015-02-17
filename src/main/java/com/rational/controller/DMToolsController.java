package com.rational.controller;

import com.rational.facade.TreasureFacade;
import com.rational.model.entities.CoinPurse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by awest on 2/16/15.
 */
@Controller
@RequestMapping("DMTools")
public class DMToolsController {

    @Resource
    TreasureFacade treasureFacade;

    @RequestMapping(method = RequestMethod.GET)
    public String getDMTools(ModelAndView modelAndView){
        modelAndView.addObject("allItems",treasureFacade.getAllMagicItems());
        return "dm/index";
    }

    @RequestMapping(value="generate-coin")
    public CoinPurse generateCoin(@RequestParam String size, @RequestParam int challenge ){
        CoinPurse coinPurse = new CoinPurse();

        return coinPurse;
    }
}
