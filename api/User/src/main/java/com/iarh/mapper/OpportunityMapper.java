package com.iarh.mapper;

import com.iarh.dto.request.OpportunityDTO;
import com.iarh.entities.Opportunity;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface OpportunityMapper {

    OpportunityMapper INSTANCE = Mappers.getMapper(OpportunityMapper.class);

    Opportunity toModel(OpportunityDTO opportunityDTO);
    OpportunityDTO toDTO(Opportunity opportunity);
    
}
