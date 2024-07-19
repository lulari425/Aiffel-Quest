import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  final String apiKey = 'YOUR_API_KEY'; // 여기에 API 키를 입력합니다.

  Future<void> getCalendarEvents() async {
    final url = 'https://www.googleapis.com/calendar/v3/calendars/primary/events?key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('Calendar Events: $data');
    } else {
      print('Failed to load calendar events');
    }
  }

  Future<void> listDriveFiles() async {
    final url = 'https://www.googleapis.com/drive/v3/files?key=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('Drive Files: $data');
    } else {
      print('Failed to load drive files');
    }
  }
}
