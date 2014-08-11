package com.rational.service.impl;

import com.rational.model.Dice;
import com.rational.model.entities.Coin;
import com.rational.model.entities.CoinPurse;
import com.rational.model.enums.CoinTypeEnum;
import com.rational.model.enums.ExchangeRateEnum;
import com.rational.model.exceptions.CurrencyConversionException;
import com.rational.service.AdminService;
import com.rational.service.CurrencyService;
import com.rational.service.DiceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

@Service("defaultCurrencyService")
public class DefaultCurrencyService implements CurrencyService {

    private static final Integer STARTING_WEALTH_MULTIPLIER = 10;

    @Resource
    DiceService diceService;

    @Resource
    AdminService adminService;

    @Override
    public CoinPurse convertCurrency(Coin from, Coin to, Long amt) throws CurrencyConversionException{
        CoinPurse purse = new CoinPurse();
        BigDecimal amount = BigDecimal.valueOf(amt);
        try {
            purse.setCP(convertUp(purse, from, to, amount).intValue());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

        return purse;
    }

    @Override
    public CoinPurse convertTotal(BigDecimal total){
        CoinPurse purse = new CoinPurse();
        Coin coin = new Coin(CoinTypeEnum.PLATINUM); //For unit testing
//        Coin coin = adminService.findCoinByName(CoinTypeEnum.PLATINUM.getType());
        try {
            purse.setCP(convertDown(purse, coin, total).intValue());
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

        return purse;
    }

    private BigDecimal convertDown(CoinPurse purse, Coin coin, BigDecimal amount)
            throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if(coin.getCoinType().equals(CoinTypeEnum.COPPER)){
            return amount;
        }
        BigDecimal remainder = BigDecimal.ZERO;
        Coin lowerCoin = getLowerDenomination(coin);
        BigDecimal exchangeRate = ExchangeRateEnum.getExchangeRate(coin.getCoinType(), lowerCoin.getCoinType());
        remainder = amount.remainder(BigDecimal.ONE);
        if(amount.compareTo(BigDecimal.ONE) >= 0){
            setCurrencyMethod(purse, coin, amount.subtract(remainder));
        }
        return convertDown(purse, lowerCoin, remainder.divide(exchangeRate).setScale(2, BigDecimal.ROUND_HALF_UP));
    }

    private BigDecimal convertUp(CoinPurse purse, Coin from, Coin to, BigDecimal amount)
            throws CurrencyConversionException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        CoinTypeEnum fromType = CoinTypeEnum.valueOf(from.getDenomination().toUpperCase());
        CoinTypeEnum toType = CoinTypeEnum.valueOf(to.getDenomination().toUpperCase());
        if(CoinTypeEnum.COPPER.equals(CoinTypeEnum.valueOf(to.getDenomination().toUpperCase())) || amount.equals(BigDecimal.ZERO)) {
            return amount;
        }
        BigDecimal exchangeRate = ExchangeRateEnum.getExchangeRate(fromType, toType);

        BigDecimal converted = amount.divide(exchangeRate).setScale(2, BigDecimal.ROUND_HALF_UP);
        if(converted.compareTo(BigDecimal.ONE) < 0){
            throw new CurrencyConversionException(
                    "Not enough " + from.getDenomination().toLowerCase() + " to convert to " + to.getDenomination().toLowerCase() + ".");
        }
        BigDecimal remainder = amount.remainder(exchangeRate).setScale(2, BigDecimal.ROUND_HALF_UP);
        converted = converted.subtract(remainder.divide(exchangeRate).setScale(2, BigDecimal.ROUND_HALF_UP));
        setCurrencyMethod(purse, to, converted.add(BigDecimal.valueOf(getCurrencyMethod(purse, to))));
        return convertUp(purse, from, getLowerDenomination(to), remainder);
    }

    private void setCurrencyMethod(CoinPurse purse, Coin coin, BigDecimal amt)
            throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Integer amount = amt.intValue();
        CoinTypeEnum type = CoinTypeEnum.valueOf(coin.getDenomination().toUpperCase());
        CoinPurse.class.getMethod("set"+type.getAbbr().toUpperCase(), Integer.class).invoke(purse, amount);
    }

    private Integer getCurrencyMethod(CoinPurse purse, Coin coin) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        CoinTypeEnum type = CoinTypeEnum.valueOf(coin.getDenomination().toUpperCase());
        return (Integer)CoinPurse.class.getMethod("get"+type.getAbbr().toUpperCase()).invoke(purse);
    }

    private Coin getLowerDenomination(Coin coin){
        CoinTypeEnum type = CoinTypeEnum.valueOf(coin.getDenomination().toUpperCase());
        switch(type){
            case SILVER:
                return new Coin(CoinTypeEnum.COPPER);
            case ELECTRUM:
                return new Coin(CoinTypeEnum.SILVER);
            case GOLD:
                return new Coin(CoinTypeEnum.ELECTRUM);
            case PLATINUM:
                return new Coin(CoinTypeEnum.GOLD);
        }

        return null;
    }

//    private Coin getLowerDenomination(Coin coin){
//        CoinTypeEnum type = CoinTypeEnum.valueOf(coin.getDenomination().toUpperCase());
//        switch(type){
//            case SILVER:
//                return adminService.findCoinByType(CoinTypeEnum.COPPER);
//            case ELECTRUM:
//                return adminService.findCoinByType(CoinTypeEnum.SILVER);
//            case GOLD:
//                return adminService.findCoinByType(CoinTypeEnum.ELECTRUM);
//            case PLATINUM:
//                return adminService.findCoinByType(CoinTypeEnum.GOLD);
//        }
//
//        return null;
//    }

    private Coin getHigherDenomination(Coin coin){
        CoinTypeEnum type = CoinTypeEnum.valueOf(coin.getDenomination().toUpperCase());
        switch(type){
            case COPPER:
                return adminService.findCoinByType(CoinTypeEnum.SILVER);
            case SILVER:
                return adminService.findCoinByType(CoinTypeEnum.ELECTRUM);
            case ELECTRUM:
                return adminService.findCoinByType(CoinTypeEnum.GOLD);
            case GOLD:
                return adminService.findCoinByType(CoinTypeEnum.PLATINUM);
        }

        return null;
    }

    @Override
    public BigDecimal getTotalPurseValueInPlatinum(CoinPurse purse) {
        BigDecimal total = BigDecimal.ZERO;

        total.add(BigDecimal.valueOf(purse.getPP()));
        total.add(BigDecimal.valueOf(purse.getGP()).divide(ExchangeRateEnum.GOLD_TO_PLATINUM));
        total.add(BigDecimal.valueOf(purse.getGP()).divide(ExchangeRateEnum.ELECTRUM_TO_PLATINUM));
        total.add(BigDecimal.valueOf(purse.getGP()).divide(ExchangeRateEnum.SILVER_TO_PLATINUM));
        total.add(BigDecimal.valueOf(purse.getGP()).divide(ExchangeRateEnum.COPPER_TO_PLATINUM));

        return total;
    }

    @Override
    public CoinPurse getStartingWealth(Dice die, Integer amt){
        CoinPurse purse = new CoinPurse();
        purse.setGP(diceService.rollDice(die, amt) * STARTING_WEALTH_MULTIPLIER);
        return purse;
    }
}
