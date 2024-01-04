package com.example.BEAssignmentDart.repository;

import com.example.BEAssignmentDart.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository  extends JpaRepository<CustomerEntity, Long> {
}
