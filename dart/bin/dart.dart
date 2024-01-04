
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:dart/model/customer.dart';
import 'package:dart/request/CustomerRequest.dart';
import 'package:dart/service/customer_service.dart';
import 'package:dart/service/impl/customer_service_impl.dart';

void main (List<String> arguments) async {
  // call api
  CustomerService customerService = CustomerServiceImpl();
  List<Customer> customers = await customerService.getAllCustomer();
  print("customer: $customers");
  print(customerService.createCustomer(CustomerRequest(fullName: "createWithDart", birthDay: "createWithDart2", address: "address", phoneNumber: "phoneNumber")));

}
