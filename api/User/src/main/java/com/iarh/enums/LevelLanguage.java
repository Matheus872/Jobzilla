package com.iarh.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum LevelLanguage {
    
    Basico("Básico"),
    Intermediario("Intermediário"),
    Avancado("Avançado");
    

    private final String level;
}
