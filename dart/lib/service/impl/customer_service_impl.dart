import 'dart:convert';

import 'package:dart/model/customer.dart';
import 'package:dart/request/CustomerRequest.dart';
import 'package:dart/service/customer_service.dart';
import 'package:http/http.dart' as http;

class CustomerServiceImpl implements CustomerService {
  final String baseURL = "http://localhost:8080/api/v1/customer";

  var newCustomer = CustomerRequest(
    fullName: 'New Customer',
    birthDay: '26/2/2001',
    address: '123 ABC Street',
    phoneNumber: '0988888881',
  );


  var headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    // Nếu bạn cần thêm các header khác, thêm vào đây
  };


  @override
  Future<List<Customer>> getAllCustomer() async {
    try {
      final response = await http.get(Uri.parse('$baseURL/getAll'));
      print(response);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        return data.map((item) => Customer.valueFromJson(item)).toList();
      }
    } catch (e) {
      print(e);
    }
    return <Customer>[];
  }

  @override
  Future<void> createCustomer(CustomerRequest customerRequest) async {
    // TODO: implement createCustomer
    try {
      var response = await http.post(
        Uri.parse('$baseURL/save'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(customerRequest.toJson()),
      );

      if (response.statusCode == 200) {
        print('New customer added successfully!');
      } else {
        print(
            'Failed to add new customer. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error adding new customer: $error');
    }
  }
}
