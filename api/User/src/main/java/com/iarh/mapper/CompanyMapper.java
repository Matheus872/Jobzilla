package com.iarh.mapper;


import com.iarh.dto.request.CompanyDTO;
import com.iarh.entities.Company;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CompanyMapper {

    CompanyMapper INSTANCE = Mappers.getMapper(CompanyMapper.class);

    Company toModel(CompanyDTO companyDTO);
    CompanyDTO toDTO(Company company);
}