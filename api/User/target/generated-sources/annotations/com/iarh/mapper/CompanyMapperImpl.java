package com.iarh.mapper;

import com.iarh.dto.request.CompanyDTO;
import com.iarh.dto.request.CompanyDTO.CompanyDTOBuilder;
import com.iarh.entities.Company;
import com.iarh.entities.Company.CompanyBuilder;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-05-29T15:28:02-0300",
    comments = "version: 1.4.2.Final, compiler: Eclipse JDT (IDE) 1.4.100.v20220318-0906, environment: Java 17.0.2 (Eclipse Adoptium)"
)
public class CompanyMapperImpl implements CompanyMapper {

    @Override
    public Company toModel(CompanyDTO companyDTO) {
        if ( companyDTO == null ) {
            return null;
        }

        CompanyBuilder company = Company.builder();

        company.adress( companyDTO.getAdress() );
        company.cnpj( companyDTO.getCnpj() );
        company.id( companyDTO.getId() );
        company.name( companyDTO.getName() );

        return company.build();
    }

    @Override
    public CompanyDTO toDTO(Company company) {
        if ( company == null ) {
            return null;
        }

        CompanyDTOBuilder companyDTO = CompanyDTO.builder();

        companyDTO.adress( company.getAdress() );
        companyDTO.cnpj( company.getCnpj() );
        companyDTO.id( company.getId() );
        companyDTO.name( company.getName() );

        return companyDTO.build();
    }
}
