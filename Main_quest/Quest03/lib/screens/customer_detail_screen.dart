import 'package:flutter/material.dart';
import 'coaching_process_screen.dart';
import 'ai_coaching_review_screen.dart';

class CustomerDetailScreen extends StatelessWidget {
  final int customerId;  // customerId가 int 타입인 경우

  CustomerDetailScreen({required this.customerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoachingProcessScreen(customerId: customerId)),  // int 타입 그대로 전달
                );
              },
              child: Text('코칭 과정'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AICoachingReviewScreen(customerId: customerId)),  // int 타입 그대로 전달
                );
              },
              child: Text('AI 코칭 리뷰'),
            ),
          ],
        ),
      ),
    );
  }
}
