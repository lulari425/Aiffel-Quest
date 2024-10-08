import 'package:flutter/material.dart';
import 'home.dart';        // Import HomeScreen
import 'community_page.dart';  // Import CommunityPage
import 'mypage.dart';    




void main() { 
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'History Toon Maker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/community': (context) => CommunityPage(),
        '/mypage': (context) => MyPage(),
      },
    );
  }
}
