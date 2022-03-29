package com.iarh.enums;


import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum UF {

    AC("ACRE"),
    AL("ALAGOAS"),
    AP("AMAPÁ"),
    AM("AMAZONAS"),
    BA("BAHIA"),
    CE("CEARÁ"),
    DF("DISTRITO FEDERAL"),
    ES("ESPÍRITO SANTO"),
    GO("GOIAS"),
    MA("MARANHÃO"),
    MT("MATO GROSSO"),
    MS("MATO GROSSO DO SUL"),
    MG("MINAS GERAIS"),
    PA("PARÁ"),
    PB("PARAÍBA"),
    PR("PARANÁ"),
    PE("PERNAMBUCO"),
    PI("PIAUÍ"),
    RJ("RIO DE JANEIRO"),
    RN("RIO GRANDE DO NORTE"),
    RS("RIO GRANDE DO SUL"),
    RO("RONDÔNIA"),
    RR("RORAIMA"),
    SC("SANTA CATARINA"),
    SP("SÃO PAULO"),
    SE("SERGIPE"),
    TO("TOCANTINS");

    private final String description;
}
