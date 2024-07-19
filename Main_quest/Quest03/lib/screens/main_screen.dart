import 'package:flutter/material.dart';
import 'customer_list_screen.dart';
import 'customer_detail_screen.dart';
import 'coaching_preparation_screen.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40),
            Spacer(),
            GestureDetector(
              onTap: () {
                // 코치 프로필 조회 화면으로 이동
              },
              child: Image.asset('assets/account_circle.png', height: 40),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/teacher_ light skin tone_.png'),
                  radius: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('아이펠 코치님', style: TextStyle(fontSize: 20)),
                    Text('2024년 7월 17일 코칭 고객 일정', style: TextStyle(fontSize: 16)),
                    Text('10:00 아이유', style: TextStyle(fontSize: 16)),
                    Text('10:30 수지', style: TextStyle(fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        // 더보기 기능
                      },
                      child: Text('더보기', style: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerListScreen()),
                );
              },
              icon: Icon(Icons.search),
              label: Text('고객 조회'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[100],
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomerDetailScreen(customerId: 56412)),
                );
              },
              child: Text('예약 고객 조회'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[100],
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 신규 고객 등록 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoachingPreparationScreen(customerId: 0), // 신규 고객의 경우 고객 ID를 0으로 설정
                  ),
                );
              },
              child: Text('신규 고객 등록'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[100],
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
