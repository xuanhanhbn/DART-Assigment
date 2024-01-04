package com.example.BEAssignmentDart.controller;

import com.example.BEAssignmentDart.entity.CustomerEntity;
import com.example.BEAssignmentDart.repository.CustomerRepository;
import com.example.BEAssignmentDart.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/customer")

public class CustomerController {
@Autowired
   private CustomerService customerService;

    @PostMapping("/save")
    public String saveCustomer(@RequestBody CustomerEntity customerEntity) {
        try {
            customerService.saveCustomer(customerEntity);
            return "create success";
        } catch (Exception ex) {
            return ex.getMessage();
        }
    }

    @GetMapping("/getAll")
    public List<CustomerEntity> getAll() {
        List<CustomerEntity> list = new ArrayList<>();
        try {
            list = customerService.getAllCustomer();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }

}
