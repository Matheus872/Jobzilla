package com.iarh.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.iarh.enums.EducationLevel;
import com.iarh.enums.LevelLanguage;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Opportunity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String cnpjCompany;

    @Column
    private Float salary;

    @Column(nullable = false)
    private String companyName;

    @Column(nullable = false)
    private String workplace;

    @Column(nullable = false)
    private String trainingArea;

    @Column(nullable = false)
    private String hour;

    @Column(nullable = false)
    private EducationLevel educationLevel;

    @Column
    private String language;

    @Column
    private LevelLanguage levelLanguage;

    @Column
    private String experience;

    @Column(nullable = false)
    private String requirementDescription;

    @Column
    private String benefitDescription;
}
