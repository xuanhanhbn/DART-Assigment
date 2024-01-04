class Customer {
  String? fullName;
  String? birthDay;
  String? address;
  String? phoneNumber;

  Customer({
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

  factory Customer.valueFromJson(Map<String, dynamic> json) {
    return Customer(
        fullName: json["fullName"] ?? 'N/A',
        birthDay: json["birthDay"] ?? 'N/A',
        address: json["address"] ?? 'N/A',
        phoneNumber: json["phoneNumber"] ?? 'N/A');
  }

  @override
  String toString() {
    // TODO: implement toString
    return "name: $fullName,birthDay: $birthDay, address: $address, phoneNumber: $phoneNumber";
  }
}
