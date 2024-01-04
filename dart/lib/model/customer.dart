class Customer {
  int? id;
  String? fullName;
  String? birthDay;
  String? address;
  String? phoneNumber;

  Customer({
    required this.id,
    required this.fullName,
    required this.birthDay,
    required this.address,
    required this.phoneNumber,
  });

  factory Customer.valueFromJson(Map<String, dynamic> json) {
    return Customer(
        id: json["id"] ?? 'N/A',
        fullName: json["fullName"] ?? 'N/A',
        birthDay: json["birthDay"] ?? 'N/A',
        address: json["address"] ?? 'N/A',
        phoneNumber: json["phoneNumber"] ?? 'N/A');
  }

  @override
  String toString() {
    // TODO: implement toString
    return "id: $id, name: $fullName,birthDay: $birthDay, address: $address, phoneNumber: $phoneNumber";
  }
}
