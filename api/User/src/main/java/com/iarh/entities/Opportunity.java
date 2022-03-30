package com.iarh.entities;

import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

public class Opportunity {
    
    @Id
    @GeneratedValue
    @Getter
    private Long id;

    @Getter
    @Setter
    private Float salary;

    @Getter
    @Setter
    private String companyName;

    @Getter
    @Setter
    private String workplace;

    @Getter
    @Setter
    private String trainingArea;

    @Getter
    @Setter
    private String hour;

    @Getter
    @Setter
    private String educationLevel;

    @Getter
    @Setter
    private String language;

    @Getter
    @Setter
    private String levelLanguage;

    @Getter
    @Setter
    private Boolean experience;

    @Getter
    @Setter
    private String requirementDescription;

    @Getter
    @Setter
    private String benefitDescription;
}
