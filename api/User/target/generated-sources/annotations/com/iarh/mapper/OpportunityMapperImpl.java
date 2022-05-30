package com.iarh.mapper;

import com.iarh.dto.request.OpportunityDTO;
import com.iarh.dto.request.OpportunityDTO.OpportunityDTOBuilder;
import com.iarh.entities.Opportunity;
import com.iarh.entities.Opportunity.OpportunityBuilder;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-05-29T15:28:02-0300",
    comments = "version: 1.4.2.Final, compiler: Eclipse JDT (IDE) 1.4.100.v20220318-0906, environment: Java 17.0.2 (Eclipse Adoptium)"
)
public class OpportunityMapperImpl implements OpportunityMapper {

    @Override
    public Opportunity toModel(OpportunityDTO opportunityDTO) {
        if ( opportunityDTO == null ) {
            return null;
        }

        OpportunityBuilder opportunity = Opportunity.builder();

        opportunity.benefitDescription( opportunityDTO.getBenefitDescription() );
        opportunity.cnpjCompany( opportunityDTO.getCnpjCompany() );
        opportunity.companyName( opportunityDTO.getCompanyName() );
        opportunity.educationLevel( opportunityDTO.getEducationLevel() );
        opportunity.hour( opportunityDTO.getHour() );
        opportunity.id( opportunityDTO.getId() );
        opportunity.levelLanguage( opportunityDTO.getLevelLanguage() );
        opportunity.requirementDescription( opportunityDTO.getRequirementDescription() );
        opportunity.trainingArea( opportunityDTO.getTrainingArea() );

        return opportunity.build();
    }

    @Override
    public OpportunityDTO toDTO(Opportunity opportunity) {
        if ( opportunity == null ) {
            return null;
        }

        OpportunityDTOBuilder opportunityDTO = OpportunityDTO.builder();

        opportunityDTO.benefitDescription( opportunity.getBenefitDescription() );
        opportunityDTO.cnpjCompany( opportunity.getCnpjCompany() );
        opportunityDTO.companyName( opportunity.getCompanyName() );
        opportunityDTO.educationLevel( opportunity.getEducationLevel() );
        opportunityDTO.hour( opportunity.getHour() );
        opportunityDTO.id( opportunity.getId() );
        opportunityDTO.levelLanguage( opportunity.getLevelLanguage() );
        opportunityDTO.requirementDescription( opportunity.getRequirementDescription() );
        opportunityDTO.trainingArea( opportunity.getTrainingArea() );

        return opportunityDTO.build();
    }
}
