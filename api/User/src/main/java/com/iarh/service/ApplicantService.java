package com.iarh.service;

import com.iarh.dto.request.ApplicantDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.exception.ApplicantNotFoundException;
import com.iarh.mapper.ApplicantMapper;
import com.iarh.repository.ApplicantRepository;
import lombok.AllArgsConstructor;
import com.iarh.entities.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(onConstructor = @__(@Autowired))
public class ApplicantService {

    private ApplicantRepository applicantRepository;
    private final ApplicantMapper applicantMapper = ApplicantMapper.INSTANCE;

    public MessageResponseDTO createApplicant(ApplicantDTO applicantDTO){
        Applicant applicantToSave = applicantMapper.toModel(applicantDTO);
        Applicant savedApplicant = applicantRepository.save(applicantToSave);
        return createMessageResponse(savedApplicant.getId());
    }

    public List<ApplicantDTO> listAll() {
        List<Applicant> allPeople = applicantRepository.findAll();
        return allPeople.stream()
                .map(applicantMapper::toDTO)
                .collect(Collectors.toList());
    }

    public ApplicantDTO findById(Long id) throws ApplicantNotFoundException {
        Applicant applicant = verifyIfExists(id);
        return applicantMapper.toDTO(applicant);
    }

    public void deleteById(Long id) throws ApplicantNotFoundException{
        verifyIfExists(id);
        applicantRepository.deleteById(id);
    }

    private Applicant verifyIfExists(Long id) throws ApplicantNotFoundException {
        return applicantRepository.findById(id)
                .orElseThrow(() -> new ApplicantNotFoundException(id));
    }

    public MessageResponseDTO updateById(Long id, ApplicantDTO applicantDTO) throws ApplicantNotFoundException {
        verifyIfExists(id);
        Applicant applicantToUpdate = applicantMapper.toModel(applicantDTO);
        Applicant savedApplicant = applicantRepository.save(applicantToUpdate);
        return createMessageResponse(savedApplicant.getId());

    }

    private MessageResponseDTO createMessageResponse(Long id) {
        return MessageResponseDTO.builder()
                .message("Created Applicant with ID: " + id)
                .build();
    }
}