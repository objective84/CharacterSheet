package com.rational.model.enums;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

public class ExchangeRateEnum {


    public static final BigDecimal COPPER_TO_SILVER = BigDecimal.valueOf(10);
    public static final BigDecimal COPPER_TO_ELECTRUM = BigDecimal.valueOf(50);
    public static final BigDecimal COPPER_TO_GOLD = BigDecimal.valueOf(100);
    public static final BigDecimal COPPER_TO_PLATINUM = BigDecimal.valueOf(1000);

    public static final BigDecimal SILVER_TO_COPPER = BigDecimal.valueOf(.1);
    public static final BigDecimal SILVER_TO_ELECTRUM = BigDecimal.valueOf(5);
    public static final BigDecimal SILVER_TO_GOLD = BigDecimal.valueOf(10);
    public static final BigDecimal SILVER_TO_PLATINUM = BigDecimal.valueOf(100);

    public static final BigDecimal ELECTRUM_TO_COPPER = BigDecimal.valueOf(.02);
    public static final BigDecimal ELECTRUM_TO_SILVER = BigDecimal.valueOf(.2);
    public static final BigDecimal ELECTRUM_TO_GOLD = BigDecimal.valueOf(5);
    public static final BigDecimal ELECTRUM_TO_PLATINUM = BigDecimal.valueOf(20);

    public static final BigDecimal GOLD_TO_COPPER = BigDecimal.valueOf(.001);
    public static final BigDecimal GOLD_TO_SILVER = BigDecimal.valueOf(.01);
    public static final BigDecimal GOLD_TO_ELECTRUM = BigDecimal.valueOf(.5);
    public static final BigDecimal GOLD_TO_PLATINUM = BigDecimal.valueOf(10);

    public static final BigDecimal PLATINUM_TO_COPPER = BigDecimal.valueOf(.0001);
    public static final BigDecimal PLATINUM_TO_SILVER = BigDecimal.valueOf(.001);
    public static final BigDecimal PLATINUM_TO_ELECTRUM = BigDecimal.valueOf(.01);
    public static final BigDecimal PLATINUM_TO_GOLD = BigDecimal.valueOf(.1);

    public static BigDecimal getValue(String type) {

        List<Field> fields = Arrays.asList(ExchangeRateEnum.class.getDeclaredFields());

        for (Field field : fields) {
            if (field.getName().equals(type)) {
                try {
                    return (BigDecimal) field.get(type);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public static BigDecimal getExchangeRate(CoinTypeEnum from, CoinTypeEnum to){
        return ExchangeRateEnum.getValue(from.toString() + "_TO_" + to.toString()).setScale(2, BigDecimal.ROUND_CEILING);
    }

}
