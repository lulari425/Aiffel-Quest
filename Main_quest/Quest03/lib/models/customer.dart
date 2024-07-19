class Customer {
  final int id;
  final String name;
  final String phone;
  final String email;

  Customer({required this.id, required this.name, required this.phone, required this.email});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}
