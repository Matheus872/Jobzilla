package com.iarh.dto.request;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.iarh.enums.EducationLevel;
import com.iarh.enums.LevelLanguage;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OpportunityDTO {
    
    private Long id;

    @NotEmpty
    private String cnpjCompany;

    private Float salary;

    @NotEmpty
    @Size(min=2, max=100)
    private String companyName;

    @NotEmpty
    @Size(min=10, max=100)
    private String workPlace;

    @NotEmpty
    @Size(min=2, max=100)
    private String trainingArea;

    @NotEmpty
    @Size(min=2, max=30)
    private String hour;

    @NotEmpty
    private EducationLevel educationLevel;

    @Size(min=2, max=30)
    private String language;

    private LevelLanguage levelLanguage;

    @Size(min=5, max=100)
    private String experience;

    @NotEmpty
    @Size(min=30, max=200)
    private String requirementDescription;

    @Size(min=10, max=200)
    private String benefitDescription;

}
