package com.iarh.config;


import com.fasterxml.jackson.annotation.JsonAnyGetter;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@ConfigurationProperties("spring.datasources")
@Getter
@Setter
public class DBConfiguration {
    private String driverClassName;
    private String url;
    private String username;
    private String password;

    @Profile("dev")
    @Bean
    public String testDatabaseConection() {
        System.out.println("DB Connection for Dev - H2");
        System.out.println(driverClassName);
        System.out.println(url);
        return "DB Conection to H2_TEST - Test Instance";

    }

    @Profile("prod")
    @Bean
    public String productionDatabaseConection(){
        System.out.println("DB Connection for Production - PostgreesSQL");
        System.out.println(driverClassName);
        System.out.println(url);
        return "DB Connection to POSTGRESS_PROD - Production instance";

    }
}