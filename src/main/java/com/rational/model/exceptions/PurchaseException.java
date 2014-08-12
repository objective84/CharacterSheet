package com.rational.model.exceptions;

public class PurchaseException extends Exception {

    public static final String NO_PURSE = "You do not have a purse yet. Choose a class to receive your starting coin.";
    public static final String NOT_ENOUGH_COIN = "You do not have enough coin to make this purchase.";

    public PurchaseException(String message){
        super(message);
    }
}
