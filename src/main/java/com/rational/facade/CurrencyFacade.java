package com.rational.facade;

import com.rational.model.entities.CoinPurse;
import com.rational.model.exceptions.CurrencyConversionException;

public interface CurrencyFacade {

    CoinPurse convertCurrency(String from, String to, Integer amt) throws CurrencyConversionException;
}
