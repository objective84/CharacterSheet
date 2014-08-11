package com.rational.service;

import com.rational.model.Dice;
import com.rational.model.entities.Coin;
import com.rational.model.entities.CoinPurse;
import com.rational.model.exceptions.CurrencyConversionException;

import java.math.BigDecimal;

public interface CurrencyService {

    CoinPurse convertCurrency(Coin from, Coin to, Long amt) throws CurrencyConversionException;

    CoinPurse convertTotal(BigDecimal total);

    java.math.BigDecimal getTotalPurseValueInPlatinum(CoinPurse purse);

    CoinPurse getStartingWealth(Dice die, Integer amt);
}
