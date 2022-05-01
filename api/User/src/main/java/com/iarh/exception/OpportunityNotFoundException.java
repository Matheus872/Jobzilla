package com.iarh.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class OpportunityNotFoundException extends Exception{
    public OpportunityNotFoundException(Long id){
        super("Opportunity not found with id " + id);
    }
}
