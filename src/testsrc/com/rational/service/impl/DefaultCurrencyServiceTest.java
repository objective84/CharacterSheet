package com.rational.service.impl;


import com.rational.model.entities.Coin;
import com.rational.model.entities.CoinPurse;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.exceptions.CurrencyConversionException;
import com.rational.service.CurrencyService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;


public class DefaultCurrencyServiceTest {

    private CurrencyService currencyService;

    @Before
    public void setup(){
        currencyService = new DefaultCurrencyService();
    }

    @After
    public void tearDown(){

    }


    @Test
    public void testConvertCurrency_Copper_Silver_EvenExchange_pass() throws Exception {
        Coin from = new Coin();
        from.setDenomination("Copper");
        from.setAbbr("cp");

        Coin to = new Coin();
        to.setDenomination("Silver");
        to.setAbbr("sp");

        CoinPurse purse = currencyService.convertCurrency(from, to, 100L);

        assertTrue(purse.getGP() == 0);
        assertTrue(purse.getEP() == 0);
        assertTrue(purse.getSP() == 10);
        assertTrue(purse.getCP() == 0);
    }

    @Test
    public void testConvertCurrency_Copper_Silver_UnEvenExchange_pass() throws Exception {
        Coin from = new Coin();
        from.setDenomination("Copper");
        from.setAbbr("cp");

        Coin to = new Coin();
        to.setDenomination("Silver");
        to.setAbbr("sp");

        CoinPurse purse = currencyService.convertCurrency(from, to, 127L);

        assertTrue(purse.getGP() == 0);
        assertTrue(purse.getEP() == 0);
        assertTrue(purse.getSP() == 12);
        assertTrue(purse.getCP() == 7);
    }

    @Test
    public void testConvertCurrency_Copper_Gold_EvenExchange_pass() throws Exception {
        Coin from = new Coin();
        from.setDenomination("Copper");
        from.setAbbr("cp");

        Coin to = new Coin();
        to.setDenomination("Gold");
        to.setAbbr("gp");

        CoinPurse purse = currencyService.convertCurrency(from, to, 5000L);

        assertTrue(purse.getGP() == 50);
        assertTrue(purse.getEP() == 0);
        assertTrue(purse.getSP() == 0);
        assertTrue(purse.getCP() == 0);
    }

    @Test
    public void testConvertCurrency_Copper_Gold_UnEvenExchange_pass() throws Exception {
        Coin from = new Coin();
        from.setDenomination("Copper");
        from.setAbbr("cp");

        Coin to = new Coin();
        to.setDenomination("Gold");
        to.setAbbr("gp");

        CoinPurse purse = currencyService.convertCurrency(from, to, 5462L);

        assertTrue(purse.getGP() == 54);
        assertTrue(purse.getEP() == 1);
        assertTrue(purse.getSP() == 1);
        assertTrue(purse.getCP() == 2);
    }

    @Test(expected = CurrencyConversionException.class)
    public void testConvertCurrency_Copper_Gold_UnEvenExchange_notEnough() throws Exception {
        Coin from = new Coin();
        from.setDenomination("Copper");
        from.setAbbr("cp");

        Coin to = new Coin();
        to.setDenomination("Gold");
        to.setAbbr("gp");
        currencyService.convertCurrency(from, to, 50L);
    }

    @Test(expected = CurrencyConversionException.class)
    public void testConvertCurrency_Silver_Gold_UnEvenExchange_notEnough() throws Exception {
        Coin from = new Coin(CoinTypeEnum.SILVER);
        Coin to = new Coin(CoinTypeEnum.GOLD);
        currencyService.convertCurrency(from, to, 9L);
    }

    @Test
    public void testConvertTotal_pass() throws Exception {
        BigDecimal total = new BigDecimal(1.34);
        CoinPurse purse = currencyService.convertTotal(total);

        assertTrue(purse.getPP() == 1);
        assertTrue(purse.getGP() == 3);
        assertTrue(purse.getEP() == 0);
        assertTrue(purse.getSP() == 4);
        assertTrue(purse.getCP() == 0);
    }


    @Test
    public void testConvertTotal_2_pass() throws Exception {
        BigDecimal total = new BigDecimal(.87);
        CoinPurse purse = currencyService.convertTotal(total);

        assertTrue(purse.getPP() == 0);
        assertTrue(purse.getGP() == 8);
        assertTrue(purse.getEP() == 1);
        assertTrue(purse.getSP() == 2);
        assertTrue(purse.getCP() == 0);
    }

}
