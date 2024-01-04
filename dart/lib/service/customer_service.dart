import 'package:dart/model/customer.dart';
import 'package:dart/request/CustomerRequest.dart';

abstract class CustomerService {
  Future<List<Customer>> getAllCustomer();
  Future<void> createCustomer(CustomerRequest customerRequest);
}