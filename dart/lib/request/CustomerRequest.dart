
class CustomerRequest {
  final String fullName;
  final String birthDay;
  final String address;
  final String phoneNumber;

  CustomerRequest({
    required this.fullName,
    required this.birthDay,
    required this.address,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'birthDay': birthDay,
      'address': address,
      'phoneNumber': phoneNumber,
    };
  }
}