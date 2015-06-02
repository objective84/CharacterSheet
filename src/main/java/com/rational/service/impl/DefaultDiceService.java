package com.rational.service.impl;

import com.rational.model.Dice;
import com.rational.repository.DiceRepository;
import com.rational.service.DiceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Service("defaultDiceService")
public class DefaultDiceService implements DiceService {


    @Resource
    private DiceRepository diceRepository;

    public Dice findDice(Long id) {
        return diceRepository.findOne(id);
    }

    public List<Dice> findAllDice() {
        return diceRepository.findAll();
    }

    public Integer rollDice(Dice die, Integer amt) {
        Random rand = new Random();
        Integer totalRoll = 0;
        for(int i=0; i<amt; i++) {
            totalRoll += rand.nextInt(die.getMaxRoll()) + die.getMinRoll();
        }
        return totalRoll;
    }

    public Map<String, Dice> getAllDice(){
        Map<String, Dice> diceMap = new HashMap<String, Dice>();
        List<Dice> diceList = findAllDice();

        for(Dice dice : diceList){
            diceMap.put(dice.getName(), dice);
        }
        return diceMap;
    }

    public int[] rollSeparateDice(Dice die, Integer amt) {
        Random rand = new Random();
        int[] rolls = new int[amt];
        for(int i=0; i<amt; i++) {
            rolls[i] = rand.nextInt(die.getMaxRoll()) + die.getMinRoll();
        }
        return rolls;
    }
}
