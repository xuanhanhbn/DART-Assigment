package com.example.BEAssignmentDart.service;

import com.example.BEAssignmentDart.entity.CustomerEntity;

import java.util.List;

public interface CustomerService {
    void saveCustomer(CustomerEntity customerEntity);
    List<CustomerEntity> getAllCustomer();
}
