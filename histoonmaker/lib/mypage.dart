import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Goes back to the previous screen
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/'); // Navigates back to HomeScreen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center, // Aligns children in the center
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                Positioned(
                  bottom: 1, // Places the camera icon at the bottom of the avatar
                  right: -10,
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo, color: Colors.black),
                    onPressed: () {
                      // 프로필 이미지 변경 로직 추가
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Adjust the spacing between the avatar and text
            Text(
              'elena123',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40), // Adjust the spacing between the text and the rest of the content
            Text('내가 만든 이미지/웹툰 현황', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            _buildStatusCard('3.1 운동', '130', '1'),
            _buildStatusCard('훈민정음', '70', '3'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(String title, String likes, String rank) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset('assets/image_placeholder.png', width: 50, height: 50), // 이미지 경로 설정
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.thumb_up, size: 16),
                      // Text('좋아요: $likes'),
                      Text('$likes'),
                      SizedBox(width: 16),
                      // Icon(Icons.thumb_down, size: 16), 
                      Text('No.  $rank'),
                      // Text('$rank'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
