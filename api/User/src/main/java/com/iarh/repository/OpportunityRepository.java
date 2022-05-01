package com.iarh.repository;

import com.iarh.entities.Opportunity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OpportunityRepository extends JpaRepository<Opportunity, Long>{
    
}
