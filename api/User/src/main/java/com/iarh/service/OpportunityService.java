package com.iarh.service;

import com.iarh.dto.request.OpportunityDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.entities.Opportunity;
import com.iarh.exception.OpportunityNotFoundException;
import com.iarh.mapper.OpportunityMapper;
import com.iarh.repository.OpportunityRepository;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor() //onConstructor = @__(@Autowired)
public class OpportunityService {
    
    private OpportunityRepository opportunityRepository;
    private final OpportunityMapper opportunityMapper = OpportunityMapper.INSTANCE;

    public MessageResponseDTO createOpportunity(OpportunityDTO opportunityDTO){
        Opportunity opportunityToSave = opportunityMapper.toModel(opportunityDTO);
        Opportunity savedApplicant = opportunityRepository.save(opportunityToSave);
        return createMessageResponse(savedApplicant.getId());
    }

    public List<OpportunityDTO> listAll() {
        List<Opportunity> allOpportunities = opportunityRepository.findAll();
        return allOpportunities.stream()
                .map(opportunityMapper::toDTO)
                .collect(Collectors.toList());
    }

    public OpportunityDTO findById(Long id) throws OpportunityNotFoundException {
        Opportunity opportunity = verifyIfExists(id);
        return opportunityMapper.toDTO(opportunity);
    }

    public void deleteById(Long id) throws OpportunityNotFoundException{
        verifyIfExists(id);
        opportunityRepository.deleteById(id);
    }

    private Opportunity verifyIfExists(Long id) throws OpportunityNotFoundException {
        return opportunityRepository.findById(id)
                .orElseThrow(() -> new OpportunityNotFoundException(id));
    }

    public MessageResponseDTO updateById(Long id, OpportunityDTO applicantDTO) throws OpportunityNotFoundException {
        verifyIfExists(id);
        Opportunity applicantToUpdate = opportunityMapper.toModel(applicantDTO);
        Opportunity savedApplicant = opportunityRepository.save(applicantToUpdate);
        return createMessageResponse(savedApplicant.getId());

    }

    private MessageResponseDTO createMessageResponse(Long id) {
        return MessageResponseDTO.builder()
                .message("Created Applicant with ID: " + id)
                .build();
    }
}
