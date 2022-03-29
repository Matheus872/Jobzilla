package com.iarh.service;

import com.iarh.dto.request.CompanyDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.entities.Company;
import com.iarh.exception.CompanyNotFoundException;
import com.iarh.mapper.CompanyMapper;
import com.iarh.repository.CompanyRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor() //onConstructor = @__(@Autowired)
public class CompanyService {

    private CompanyRepository companyRepository;
    private final CompanyMapper companyMapper = CompanyMapper.INSTANCE;

    public MessageResponseDTO createCompany(CompanyDTO companyDTO){
        Company companyToSave = companyMapper.toModel(companyDTO);
        Company savedCompany = companyRepository.save(companyToSave);
        return createMessageResponse(savedCompany.getId());
    }

    public List<CompanyDTO> listAll() {
        List<Company> allPeople = companyRepository.findAll();
        return allPeople.stream()
                .map(companyMapper::toDTO)
                .collect(Collectors.toList());
    }

    public CompanyDTO findById(Long id) throws CompanyNotFoundException {
        Company company = verifyIfExists(id);
        return companyMapper.toDTO(company);
    }

    public void deleteById(Long id) throws CompanyNotFoundException{
        verifyIfExists(id);
        companyRepository.deleteById(id);
    }

    private Company verifyIfExists(Long id) throws CompanyNotFoundException {
        return companyRepository.findById(id)
                .orElseThrow(() -> new CompanyNotFoundException(id));
    }

    public MessageResponseDTO updateById(Long id, CompanyDTO companyDTO) throws CompanyNotFoundException {
        verifyIfExists(id);
        Company companyToUpdate = companyMapper.toModel(companyDTO);
        Company savedCompany = companyRepository.save(companyToUpdate);
        return createMessageResponse(savedCompany.getId());

    }

    private MessageResponseDTO createMessageResponse(Long id) {
        return MessageResponseDTO.builder()
                .message("Created Company with ID: " + id)
                .build();
    }
}