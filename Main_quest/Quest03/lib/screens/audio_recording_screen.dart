import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class AudioRecordingScreen extends StatefulWidget {
  @override
  _AudioRecordingScreenState createState() => _AudioRecordingScreenState();
}

class _AudioRecordingScreenState extends State<AudioRecordingScreen> {
  FlutterSoundRecorder? _recorder;
  FlutterSoundPlayer? _player;
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isRecording = false;
  bool _isListening = false;
  String _transcribedText = '';
  String? _filePath;

  @override
  void initState() {
    super.initState();
    _recorder = FlutterSoundRecorder();
    _player = FlutterSoundPlayer();
    _initialize();
  }

  Future<void> _initialize() async {
    await _recorder!.openRecorder();
    await _player!.openPlayer();
  }

  @override
  void dispose() {
    _recorder!.closeRecorder();
    _player!.closePlayer();
    _recorder = null;
    _player = null;
    super.dispose();
  }

  Future<void> _startRecording() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = '${tempDir.path}/temp_recording.aac';
    await _recorder!.startRecorder(
      toFile: tempPath,
      codec: Codec.aacADTS,
    );
    setState(() {
      _isRecording = true;
      _filePath = tempPath;
    });
  }

  Future<void> _stopRecording() async {
    await _recorder!.stopRecorder();
    setState(() {
      _isRecording = false;
    });
  }

  Future<void> _startListening() async {
    bool available = await _speech.initialize();
    if (available) {
      await _speech.listen(onResult: (result) {
        setState(() {
          _transcribedText = result.recognizedWords;
        });
      });
      setState(() {
        _isListening = true;
      });
    }
  }

  Future<void> _stopListening() async {
    await _speech.stop();
    setState(() {
      _isListening = false;
    });
  }

  Future<void> _playRecording() async {
    if (_filePath != null) {
      await _player!.startPlayer(fromURI: _filePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Recorder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isRecording ? _stopRecording : _startRecording,
              child: Text(_isRecording ? 'Stop Recording' : 'Start Recording'),
            ),
            ElevatedButton(
              onPressed: _isListening ? _stopListening : _startListening,
              child: Text(_isListening ? 'Stop Listening' : 'Start Listening'),
            ),
            ElevatedButton(
              onPressed: _playRecording,
              child: Text('Play Recording'),
            ),
            Text('Transcribed Text: $_transcribedText'),
          ],
        ),
      ),
    );
  }
}
