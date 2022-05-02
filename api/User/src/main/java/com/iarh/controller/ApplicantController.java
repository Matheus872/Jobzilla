package com.iarh.controller;


import com.iarh.dto.request.ApplicantDTO;
import com.iarh.dto.response.MessageResponseDTO;
import com.iarh.exception.ApplicantNotFoundException;
import com.iarh.service.ApplicantService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/v1/appliicant")
@AllArgsConstructor()  //onConstructor = @__(@Autowired)
public class ApplicantController {

    private ApplicantService applicantService;

    @PostMapping(path="/criar")
    @ResponseStatus(HttpStatus.CREATED)
    public MessageResponseDTO createApplicant(@RequestBody @Valid ApplicantDTO applicantDTO) {
        return applicantService.createApplicant(applicantDTO);
    }

    @GetMapping("/encontrar")
    @ResponseStatus(HttpStatus.OK)
    public List<ApplicantDTO> listAll(){
        return applicantService.listAll();
    }

    @GetMapping("/encontrar/{id}")
    @ResponseStatus(HttpStatus.OK)
    public ApplicantDTO findById(@PathVariable Long id) throws ApplicantNotFoundException {
        return applicantService.findById(id);
    }

    @DeleteMapping("/excluir/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteById(@PathVariable Long id) throws ApplicantNotFoundException {
        applicantService.deleteById(id);
    }

    @PutMapping("/atualizar/{id}")
    @ResponseStatus
    public MessageResponseDTO updateById(@PathVariable Long id, @RequestBody @Valid ApplicantDTO applicantDTO) throws ApplicantNotFoundException {
        return applicantService.updateById(id, applicantDTO);
    }

}