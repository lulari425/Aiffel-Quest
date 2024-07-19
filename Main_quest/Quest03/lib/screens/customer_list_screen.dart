import 'package:flutter/material.dart';
import 'customer_detail_screen.dart';

class CustomerListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('고객 목록'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('아이유'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerDetailScreen(customerId: 56412)),
              );
            },
          ),
          ListTile(
            title: Text('수지'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerDetailScreen(customerId: 56413)),
              );
            },
          ),
        ],
      ),
    );
  }
}
