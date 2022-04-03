package com.iarh.dto.request;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.iarh.entities.Adress;
import com.iarh.entities.Opportunity;
import com.iarh.entities.Phone;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CompanyDTO {

    private Long id;

    @NotEmpty
    private String cnpj;

    @NotEmpty
    @Size(min = 3, max = 100)
    private String name;

    @Valid
    @NotEmpty
    private Adress adress;

    @Valid
    @NotEmpty
    private List<Phone> phones;

    @Valid
    @NotEmpty
    private List<Opportunity> opportunities;

}
