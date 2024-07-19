import 'package:flutter/material.dart';
import 'audio_recording_screen.dart';

class CoachingProcessScreen extends StatelessWidget {
  final int customerId;

  CoachingProcessScreen({required this.customerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코칭 과정'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSectionTitle('녹음하기'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioRecordingScreen()),
                );
              },
              child: Text('녹음 화면으로 이동'),
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Trust & Target Setting'),
            _buildQuestionAnswerField('Q1. 지난 한 주 돌아보면 어떤 일들이 감사하다는 생각이 드세요?', 'A.'),
            _buildQuestionAnswerField('Q2. 오늘 저랑 대화를 마치고 나면 뭐가 어떻게 달라졌으면 좋겠어요?', 'A.'),
            SizedBox(height: 20),
            _buildSectionTitle('Reality Recognition'),
            _buildQuestionAnswerField('Q1. 현재 상황에 대해 어떻게 생각하시나요?', 'A.'),
            _buildQuestionAnswerField('Q2. 이 상황이 지속될 경우 어떤 결과가 예상되나요?', 'A.'),
            SizedBox(height: 20),
            _buildSectionTitle('Applaud & Analysis'),
            _buildQuestionAnswerField('Q1. 이번 주에 스스로에게 칭찬할 만한 점은 무엇인가요?', 'A.'),
            _buildQuestionAnswerField('Q2. 이 과정에서 배운 점은 무엇인가요?', 'A.'),
            SizedBox(height: 20),
            _buildSectionTitle('Imagine & Idea'),
            _buildQuestionAnswerField('Q1. 앞으로 어떤 전략을 시도해보고 싶으세요?', 'A.'),
            _buildQuestionAnswerField('Q2. 새로운 아이디어가 떠오른 것이 있나요?', 'A.'),
            SizedBox(height: 20),
            _buildSectionTitle('Now & Notify'),
            _buildQuestionAnswerField('Q1. 다음 주까지 어떤 목표를 설정하시겠습니까?', 'A.'),
            _buildQuestionAnswerField('Q2. 이 목표를 달성하기 위해 필요한 지원은 무엇인가요?', 'A.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 저장 기능 구현
              },
              child: Text('저장'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildQuestionAnswerField(String question, String answerPlaceholder) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 16),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: answerPlaceholder,
            ),
            maxLines: null,
          ),
        ],
      ),
    );
  }
}
