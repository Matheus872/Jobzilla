package com.iarh.dto.request;

import com.iarh.entities.Phone;
import com.iarh.enums.Gender;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.util.List;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ApplicantDTO {

    private Long id;

    @NotEmpty
    private String cpf;

    @NotEmpty
    @Size(min = 3, max = 100)
    private String firstname;

    @NotEmpty
    @Size(min = 3, max = 100)
    private String lastname;

    private LocalDate birthDate;

    @Valid
    @NotEmpty
    private Gender gender;

    @Valid
    @NotEmpty
    private List<Phone> phones;

}
