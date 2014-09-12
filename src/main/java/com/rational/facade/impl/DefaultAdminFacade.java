package com.rational.facade.impl;

import com.rational.facade.AdminFacade;
import com.rational.model.Dice;
import com.rational.service.AdminService;
import com.rational.service.CharacterService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Component(value = "defaultAdminFacade")
public class DefaultAdminFacade implements AdminFacade {

    @Resource
    private AdminService adminService;

    @Resource
    private CharacterService characterService;

    @Override
    @Transactional
    public Dice saveDice(Dice dice) {
        return adminService.saveDice(dice);
    }

    @Override
    public Dice findDice(Long id) {
        return adminService.findDice(id);
    }

    @Override
    public List<Dice> findAllDice() {
        return adminService.findAllDice();
    }




}
