package com.iarh.mapper;

import com.iarh.dto.request.ApplicantDTO;
import com.iarh.entities.Applicant;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface ApplicantMapper {

    ApplicantMapper INSTANCE = Mappers.getMapper(ApplicantMapper.class);

    //@Mapping(target = "birthDate", source = "birthDate", dateFormat = "dd-MM-yyyy")
    Applicant toModel(ApplicantDTO applicantDTO);
    ApplicantDTO toDTO(Applicant applicant);
}