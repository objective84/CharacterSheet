package com.rational.facade.impl;

import com.rational.facade.DiceFacade;
import com.rational.model.Dice;
import com.rational.service.DiceService;

import javax.annotation.Resource;
import java.util.List;

public class DefaultDiceFacade implements DiceFacade {

    @Resource(name = "defaultDiceService")
    private DiceService diceService;

    @Override
    public Dice findDice(Long id) {
        return diceService.findDice(id);
    }

    @Override
    public List<Dice> findAllDice() {
        return diceService.findAllDice();
    }
}
