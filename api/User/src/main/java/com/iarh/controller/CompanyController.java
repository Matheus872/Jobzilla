package com.iarh.controller;


import com.iarh.dto.request.CompanyDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.exception.CompanyNotFoundException;
import com.iarh.service.CompanyService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/v1/appliicant")
@AllArgsConstructor() //onConstructor = @__(@Autowired)
public class CompanyController {

    private CompanyService companyService;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public MessageResponseDTO createCompany(@RequestBody @Valid CompanyDTO companyDTO) {
        return companyService.createCompany(companyDTO);
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<CompanyDTO> listAll(){
        return companyService.listAll();
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public CompanyDTO findById(@PathVariable Long id) throws CompanyNotFoundException {
        return companyService.findById(id);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteById(@PathVariable Long id) throws CompanyNotFoundException {
        companyService.deleteById(id);
    }

    @PutMapping("/{id}")
    @ResponseStatus
    public MessageResponseDTO updateById(@PathVariable Long id, @RequestBody @Valid CompanyDTO companyDTO) throws CompanyNotFoundException {
        return companyService.updateById(id, companyDTO);
    }

}