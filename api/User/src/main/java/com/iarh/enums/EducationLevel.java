package com.iarh.enums;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public enum EducationLevel {
    
    EnsinoMedioCompleto("Ensino Médio Completo"),
    EnsinoSuperiorIncompleto("Ensino Superior Incompleto"),
    EnsinoSuperiorCompleto("Ensino Superior Completo"),
    PosGraduacao("Pós-graduação"),
    Mestrado("Mestrado"),
    Doutorado("Doutorado");

    private final String level;
}
