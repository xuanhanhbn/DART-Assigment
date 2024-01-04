package com.example.BEAssignmentDart.service.impl;

import com.example.BEAssignmentDart.entity.CustomerEntity;
import com.example.BEAssignmentDart.repository.CustomerRepository;
import com.example.BEAssignmentDart.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public void saveCustomer(CustomerEntity customerEntity) {
        customerRepository.save(customerEntity);
    }

    @Override
    public List<CustomerEntity> getAllCustomer() {
        return customerRepository.findAll();
    }

}
