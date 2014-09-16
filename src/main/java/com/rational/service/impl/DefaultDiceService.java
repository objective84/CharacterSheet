package com.rational.service.impl;

import com.rational.model.Dice;
import com.rational.repository.DiceRepository;
import com.rational.service.DiceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Random;

@Service("defaultDiceService")
public class DefaultDiceService implements DiceService {


    @Resource
    private DiceRepository diceRepository;

    @Override
    public Dice findDice(Long id) {
        return diceRepository.findOne(id);
    }

    @Override
    public List<Dice> findAllDice() {
        return diceRepository.findAll();
    }

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
