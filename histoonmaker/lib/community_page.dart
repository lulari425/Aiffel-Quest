import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('커뮤니티'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/mypage'); // 프로필 페이지로 이동
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // 웹툰 랭킹
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '웹툰 랭킹',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildRankingsGrid([
            _buildRankingCard(1, '임진왜란', 'assets/toon1.png', 100, 5, 15),
            _buildRankingCard(2, '3.1 운동', 'assets/toon2.png', 80, 6, 10),
            // _buildRankingCard(3, '순교성지', 'assets/sungyo.png', 70, 4, 12),
            // _buildRankingCard(4, '조선왕조실록', 'assets/joseon.png', 90, 3, 14),
            // _buildRankingCard(5, '울산 암각화', 'assets/ulsan.png', 130, 2, 20),
          ]),

          // 이미지 요약 랭킹
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '이미지 요약 랭킹',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildRankingsGrid([
            _buildRankingCard(1, '3.1 운동', 'assets/banner_image.png', 130, 5, 20),
            _buildRankingCard(2, '6.25 전쟁', 'assets/625.png', 100, 6, 12),
          ]),
        ],
      ),
    );
  }

  // 랭킹 그리드 빌드
  Widget _buildRankingsGrid(List<Widget> rankingCards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(), // 내장 스크롤 비활성화
        shrinkWrap: true,
        crossAxisCount: 2, // 두 개의 열로 나누기
        childAspectRatio: 0.8, // 카드의 세로 비율 조정
        children: rankingCards,
      ),
    );
  }

  // 카드 생성 메서드 (ranking 번호 추가)
  Widget _buildRankingCard(int rank, String title, String imagePath, int likes, int dislikes, int comments) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'No.$rank ',  // Bold and larger part
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,  // Larger font size
                        ),
                      ),
                      TextSpan(
                        text: '$title',  // Regular part
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.thumb_up, size: 16),
                    SizedBox(width: 4),
                    Text('$likes'),
                    SizedBox(width: 16),
                    Icon(Icons.thumb_down, size: 16),
                    SizedBox(width: 4),
                    Text('$dislikes'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment, size: 16),
                    Text('$comments comments'),
                  ],
                ),
              ],
            ),
          ), 
        ],
      ),
    );
  }
}
