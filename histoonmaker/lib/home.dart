import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Toon Maker'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/mypage');// 마이페이지 프로필 화면으로 이동하는 로직 
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFBF8773),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // 추가적인 메뉴 항목을 추가할 수 있음
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/banner_image.png', // 배너 이미지 경로 설정
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '추천 사건 TOP 5',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                _buildEventCard('6.25 전쟁', 'assets/625.png'),
                _buildEventCard('삼강행실도', 'assets/samgang.png'),
                _buildEventCard('순교성지', 'assets/sungyo.png'),
                _buildEventCard('조선왕조실록', 'assets/joseon.png'),
                _buildEventCard('울산 암구대 암각화', 'assets/ulsan.png'),
                _buildEventCard('더보기', null),
              ],
            ),
          ),
        ],
      ), 
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,  // 홈 화면을 기본 선택
          backgroundColor: Color(0xFFBF8773), 
          selectedItemColor: Colors.white,  // 선택된 항목의 라벨 색상 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.diversity_3),
            label: 'Community', 
            // backgroundColor: Color(0xFFBF8773), // Add a background color 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: 'AI Chat',
            // backgroundColor: Color(0xFFBF8773), // Add a background color 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Color(0xFFBF8773), // Add a background color 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Timeline',
            // backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),   
            label: 'Settings',
            // backgroundColor: Color(0xFFBF8773), // Add a background color 
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/community');
          } else if (index == 1) {
            // Handle AI Chat
          } else if (index == 4) {
            Navigator.pushNamed(context, '/mypage');
          }
        },
      ),
    );
  }

  // 카드 아이템을 빌드하는 메서드
  Widget _buildEventCard(String title, String? imagePath) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: imagePath != null
                ? Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : Container(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
