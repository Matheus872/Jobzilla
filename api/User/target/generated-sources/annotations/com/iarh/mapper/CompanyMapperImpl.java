package com.iarh.mapper;

import com.iarh.dto.request.CompanyDTO;
import com.iarh.dto.request.CompanyDTO.CompanyDTOBuilder;
import com.iarh.entities.Company;
import com.iarh.entities.Company.CompanyBuilder;
import com.iarh.entities.Opportunity;
import com.iarh.entities.Phone;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-05-03T11:42:32-0300",
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
        List<Opportunity> list = companyDTO.getOpportunities();
        if ( list != null ) {
            company.opportunities( new ArrayList<Opportunity>( list ) );
        }
        List<Phone> list1 = companyDTO.getPhones();
        if ( list1 != null ) {
            company.phones( new ArrayList<Phone>( list1 ) );
        }

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
        List<Opportunity> list = company.getOpportunities();
        if ( list != null ) {
            companyDTO.opportunities( new ArrayList<Opportunity>( list ) );
        }
        List<Phone> list1 = company.getPhones();
        if ( list1 != null ) {
            companyDTO.phones( new ArrayList<Phone>( list1 ) );
        }

        return companyDTO.build();
    }
}
