package com.iarh.mapper;

import com.iarh.dto.request.ApplicantDTO;
import com.iarh.dto.request.ApplicantDTO.ApplicantDTOBuilder;
import com.iarh.entities.Applicant;
import com.iarh.entities.Applicant.ApplicantBuilder;
import com.iarh.entities.Phone;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-05-03T11:42:32-0300",
    comments = "version: 1.4.2.Final, compiler: Eclipse JDT (IDE) 1.4.100.v20220318-0906, environment: Java 17.0.2 (Eclipse Adoptium)"
)
public class ApplicantMapperImpl implements ApplicantMapper {

    @Override
    public Applicant toModel(ApplicantDTO applicantDTO) {
        if ( applicantDTO == null ) {
            return null;
        }

        ApplicantBuilder applicant = Applicant.builder();

        applicant.birthDate( applicantDTO.getBirthDate() );
        applicant.cpf( applicantDTO.getCpf() );
        applicant.firstname( applicantDTO.getFirstname() );
        applicant.gender( applicantDTO.getGender() );
        applicant.id( applicantDTO.getId() );
        applicant.lastname( applicantDTO.getLastname() );
        List<Phone> list = applicantDTO.getPhones();
        if ( list != null ) {
            applicant.phones( new ArrayList<Phone>( list ) );
        }

        return applicant.build();
    }

    @Override
    public ApplicantDTO toDTO(Applicant applicant) {
        if ( applicant == null ) {
            return null;
        }

        ApplicantDTOBuilder applicantDTO = ApplicantDTO.builder();

        applicantDTO.birthDate( applicant.getBirthDate() );
        applicantDTO.cpf( applicant.getCpf() );
        applicantDTO.firstname( applicant.getFirstname() );
        applicantDTO.gender( applicant.getGender() );
        applicantDTO.id( applicant.getId() );
        applicantDTO.lastname( applicant.getLastname() );
        List<Phone> list = applicant.getPhones();
        if ( list != null ) {
            applicantDTO.phones( new ArrayList<Phone>( list ) );
        }

        return applicantDTO.build();
    }
}
