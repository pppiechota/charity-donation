package pl.coderslab.charity.service;

public class EmailExistsException extends IllegalArgumentException{
    public EmailExistsException(String message) {
        super(message);
    }
}
