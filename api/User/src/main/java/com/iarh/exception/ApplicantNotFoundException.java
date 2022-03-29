package com.iarh.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class ApplicantNotFoundException extends Exception {
    public ApplicantNotFoundException(Long id) {
        super("Applicant not found with id " + id);
    }
}
