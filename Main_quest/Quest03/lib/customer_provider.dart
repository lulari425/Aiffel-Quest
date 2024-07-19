import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/customer.dart';

class CustomerProvider extends ChangeNotifier { // with 대신 extends 사용
  List<Customer> _customers = [];

  List<Customer> get customers => _customers;

  Future<void> fetchCustomers() async {
    final response = await http.get(Uri.parse('https://api.example.com/customers'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      _customers = data.map((json) => Customer.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load customers');
    }
  }
}
