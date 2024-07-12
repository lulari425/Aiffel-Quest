import 'package:flutter/material.dart';
import 'homepage.dart';
import 'appointment_detail.dart';
import 'myddokdak.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/appointmentDetail': (context) => AppointmentDetail(),
        '/myddokdak': (context) => MyDdokdak(),
      },
    );
  }
}
/* 프로토타입 피그마 url : https://www.figma.com/proto/IQNWuCdQo0LBotrkc2X7T0/Untitled?t=rBnnGOTM4MnWdrn3-1 */
/* 프로토타입 동영상 url :   */
/* 회고 이한나
      아쉬운점  : 
                프로토타입 구현하느라 시간을 많이 보내어 퀘스트시간이 되어 소스를 구현하려다 보니 시간이 부족한 부분이 많아
                미완성 되었지만, 그래도 이미지나 아이콘의 위치와 크기 , 색깔 조정만 하면 거의 구현이 될 것 같습니다. 그리고 
                화면이 넘어가는 부분등 화면 전환 기능 작동이 됩니다. ui 구현을 하는데 있어서 연습을 할 수 있어 재밌었습니다.
     어려웠던 점 :
                디자인 정확도 유지:
                Figma 디자인을 Flutter로 변환하는 과정에서 디자인의 정확도를 유지하는 것이 어려웠습니다. 
                특히, 각 UI 요소의 위치와 스타일을 맞추는 데 시간이 걸렸습니다.
                페이지 전환 구현:
                각 화면 간의 전환을 매끄럽게 구현하는 데 어려움이 있었습니다. 
                특히, 네비게이션 구조를 설정하고, 화면 간의 상태를 유지하는 부분에서 신경을 많이 썼습니다.       
             */
