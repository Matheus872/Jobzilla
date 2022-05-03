package com.iarh.controller;

import com.iarh.dto.request.ApplicantDTO;
import com.iarh.dto.request.OpportunityDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.exception.ApplicantNotFoundException;
import com.iarh.exception.OpportunityNotFoundException;
import com.iarh.service.ApplicantService;
import com.iarh.service.OpportunityService;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/v1/opportunity")
@AllArgsConstructor() 
public class OpportunityController {
 
    private OpportunityService opportunityService;

    @PostMapping(path="/create")
    @ResponseStatus(HttpStatus.CREATED)
    public MessageResponseDTO createOpportunity(@RequestBody @Valid OpportunityDTO opportunityDTO) {
        return opportunityService.createOpportunity(opportunityDTO);
    }

    @GetMapping(path="/listAll")
    @ResponseStatus(HttpStatus.OK)
    public List<OpportunityDTO> listAll(){
        return opportunityService.listAll();
    }

    @GetMapping(path="/list/{id}")
    @ResponseStatus(HttpStatus.OK)
    public OpportunityDTO findById(@PathVariable Long id) throws OpportunityNotFoundException {
        return opportunityService.findById(id);
    }

    @DeleteMapping(path="/delete/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteById(@PathVariable Long id) throws OpportunityNotFoundException {
        opportunityService.deleteById(id);
    }

    @PutMapping(path="/update/{id}")
    @ResponseStatus
    public MessageResponseDTO updateById(@PathVariable Long id, @RequestBody @Valid OpportunityDTO opportunityDTO) throws  OpportunityNotFoundException {
        return opportunityService.updateById(id, opportunityDTO);
    }
}