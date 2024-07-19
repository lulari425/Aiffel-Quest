import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

class AICoachingReviewScreen extends StatefulWidget {
  final int customerId;  // customerId를 int로 수정

  AICoachingReviewScreen({required this.customerId});

  @override
  _AICoachingReviewScreenState createState() => _AICoachingReviewScreenState();
}

class _AICoachingReviewScreenState extends State<AICoachingReviewScreen> {
  FlutterSoundPlayer _audioPlayer = FlutterSoundPlayer();
  String _transcribedText = '';
  String _analysisResult = '';

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    await _audioPlayer.startPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.stopPlayer();
    super.dispose();
  }

  Future<void> _playAudio(String filePath) async {
    await _audioPlayer.startPlayer(fromURI: filePath);
  }

  String _simpleTextAnalysis(String text) {
    // 간단한 텍스트 분석 함수 (예: 단어 수 세기)
    int wordCount = text.split(' ').length;
    return 'Word count: $wordCount';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Coaching Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                // 여기에 음성 파일 경로를 입력하세요.
                String filePath = 'your_audio_file_path.aac';
                await _playAudio(filePath);
              },
              child: Text('Play Audio'),
            ),
            SizedBox(height: 20),
            Text(
              'Transcribed Text:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(_transcribedText),
            SizedBox(height: 20),
            Text(
              'Analysis Result:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(_analysisResult),
          ],
        ),
      ),
    );
  }
}
