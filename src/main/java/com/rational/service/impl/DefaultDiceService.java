package com.rational.service.impl;

import com.rational.model.Dice;
import com.rational.service.DiceService;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service("defaultDiceService")
public class DefaultDiceService implements DiceService {

    @Override
    public Integer rollDice(Dice die, Integer amt) {
        Random rand = new Random();
        Integer totalRoll = 0;
        for(int i=0; i<amt; i++) {
            totalRoll += rand.nextInt(die.getMaxRoll()) + die.getMinRoll();
        }
        return totalRoll;
    }
}
