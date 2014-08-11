package com.rational.forms;

public class ResponseData<T>
{
    public static final int SUCCESS_CODE = 1;
    public static final int FAILURE_CODE = 0;

    private T data;
    private int code;
    private String message;
    private String errorMessage;

    /**
     *
     */
    public ResponseData()
    {
        // YTODO Auto-generated constructor stub
    }

    public ResponseData(final T data, final int code, final String message)
    {
        this.data = data;
        this.code = code;
        this.message = message;
    }

    /**
     * @return the data
     */
    public T getData()
    {
        return data;
    }

    /**
     * @param data
     * the data to set
     */
    public void setData(final T data)
    {
        this.data = data;
    }

    /**
     * @return the code
     */
    public int getCode()
    {
        return code;
    }

    /**
     * @param code
     * the code to set
     */
    public void setCode(final int code)
    {
        this.code = code;
    }

    /**
     * @return the message
     */
    public String getMessage()
    {
        return message;
    }

    /**
     * @param message
     * the message to set
     */
    public void setMessage(final String message)
    {
        this.message = message;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

}
