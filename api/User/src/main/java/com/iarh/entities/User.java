package com.iarh.entities;


import javax.persistence.Entity;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
abstract class User {
    private Long id;
    private String username;
    private String password;
    private String email;
}
