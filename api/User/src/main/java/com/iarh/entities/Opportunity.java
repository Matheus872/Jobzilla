package com.iarh.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Entity
public class Opportunity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter
    private Long id;

    @Getter
    @Setter
    @Column
    private String cnpjCompany;

    @Getter
    @Setter
    @Column
    private Float salary;

    @Getter
    @Setter
    @Column
    private String companyName;

    @Getter
    @Setter
    @Column
    private String workplace;

    @Getter
    @Setter
    @Column
    private String trainingArea;

    @Getter
    @Setter
    @Column
    private String hour;

    @Getter
    @Setter
    @Column
    private String educationLevel;

    @Getter
    @Setter
    @Column
    private String language;

    @Getter
    @Setter
    @Column
    private String levelLanguage;

    @Getter
    @Setter
    @Column
    private Boolean experience;

    @Getter
    @Setter
    @Column
    private String requirementDescription;

    @Getter
    @Setter
    @Column
    private String benefitDescription;
}
