import 'package:flutter/material.dart';
  
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/ddokdak/locationsearch.png'
                  // ,
                  // width: 24,
                  // height: 24
                  ), // 지역위치찾기 아이콘 추가 
                DropdownButton<String>(
                    value: '서초동',
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String? newValue) {},
                    items: <String>['서초동', '강남구', '송파구', '종로구']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.people, color: Colors.grey),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.star, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '아이펠 소아청소년과의원',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '진료 완료',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '2024/07/11(목) 오전 10:30\n다음엔 건강한 모습으로 만나요',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/appointmentDetail');
                                    },
                                    child: Text('리뷰 작성'),
                                  ),
                                  SizedBox(width: 8),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('처방전 QR 찍기'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/homepage_img.png'),
                            ),
                            SizedBox(height: 8),
                            Text('아이유', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.chat, color: Colors.grey),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '빠르게 접수 하고 싶으신가요?\n주민등록번호를 미리 입력해 보세요',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/ddokdak/drugtake.png'), 
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            onTap: (index) {
              if (index == 0) {
                Navigator.pushNamed(context, '/');
              } else if (index == 1) {
                Navigator.pushNamed(context, '/myddokdak');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '나의 똑닥',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: '커뮤니티',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '마이페이지',
              ),
            ],
          ),
          // Positioned(
          //   left: 28,
          //   top: 45,
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         left: 0,
          //         top: 0,
          //         child: Text(
          //           '서초동 ',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 13,
          //             fontFamily: 'Noto Sans KR',
          //             fontWeight: FontWeight.w700,
          //             height: 0.11,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        // ),
        // body: Container(
          // color: Colors.red,
          // child: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children:[
          //       Container(
          //         width: 305,
          //         height: 675,
          //         clipBehavior: Clip.antiAlias,
          //         decoration: BoxDecoration(color: Colors.white),
          //         child: Stack(
          //           children: [
          //             Positioned(
          //               left: 11,
          //               top: 74,
          //               child: Container(
          //                 width: 284,
          //                 height: 39,
          //                 child: Stack(
          //                   children: [
          //                     Positioned(
          //                       left: 0,
          //                       top: 0,
          //                       child: Opacity(
          //                         opacity: 0.50,
          //                         child: Container(
          //                           width: 284,
          //                           height: 39,
          //                           decoration: ShapeDecoration(
          //                             color: Color(0xCCD9D9D9),
          //                             shape: RoundedRectangleBorder(
          //                               side: BorderSide(
          //                                 width: 1,
          //                                 color: Colors.black.withOpacity(0.10000000149011612),
          //                               ),
          //                               borderRadius: BorderRadius.circular(10),
          //                             ),
          //                             shadows: [
          //                               BoxShadow(
          //                                 color: Color(0x3F000000),
          //                                 blurRadius: 4,
          //                                 offset: Offset(0, 4),
          //                                 spreadRadius: 0,
          //                               )
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                     Positioned(
          //                       left: 9,
          //                       top: 7,
          //                       child: Container(
          //                         width: 24,
          //                         height: 24,
          //                         padding: const EdgeInsets.all(3),
          //                         child: Row(
          //                           mainAxisSize: MainAxisSize.min,
          //                           mainAxisAlignment: MainAxisAlignment.center,
          //                           crossAxisAlignment: CrossAxisAlignment.center,
          //                           // children: [
          //                           // ,
          //                           // ],
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 98,
          //               top: 255,
          //               child: Container(
          //                 width: 10,
          //                 height: 42,
          //                 clipBehavior: Clip.antiAlias,
          //                 decoration: BoxDecoration(),
          //               ),
          //             ),
          //             Positioned(
          //               left: 11,
          //               top: 136,
          //               child: Container(
          //                 width: 284,
          //                 height: 171,
          //                 decoration: ShapeDecoration(
          //                   color: Colors.white,
          //                   shape: RoundedRectangleBorder(
          //                     side: BorderSide(
          //                       width: 1,
          //                       color: Colors.black.withOpacity(0),
          //                     ),
          //                     borderRadius: BorderRadius.circular(10),
          //                   ),
          //                   shadows: [
          //                     BoxShadow(
          //                       color: Color(0x26000000),
          //                       blurRadius: 4,
          //                       offset: Offset(0, 4),
          //                       spreadRadius: 0,
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 20,
          //               top: 170,
          //               child: Text(
          //                 '진료 완료',
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 16,
          //                   fontFamily: 'Noto Sans KR',
          //                   fontWeight: FontWeight.w700,
          //                   height: 0.09,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 162,
          //               top: 263,
          //               child: Container(
          //                 width: 123,
          //                 height: 34,
          //                 decoration: ShapeDecoration(
          //                   color: Color(0xFFE9E9E9),
          //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 24,
          //               top: 263,
          //               child: Container(
          //                 width: 123,
          //                 height: 32,
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: [
          //                     Container(
          //                       width: 123,
          //                       height: 34,
          //                       decoration: ShapeDecoration(
          //                         color: Color(0xFFE9E9E9),
          //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 55,
          //               top: 283,
          //               child: SizedBox(
          //                 width: 62,
          //                 height: 34,
          //                 child: Text(
          //                   '리뷰 작성',
          //                   textAlign: TextAlign.center,
          //                   style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 14,
          //                     fontFamily: 'Roboto',
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.10,
          //                     letterSpacing: 0.25,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 169,
          //               top: 283,
          //               child: SizedBox(
          //                 width: 111,
          //                 height: 34,
          //                 child: Text(
          //                   '처방전 QR 찍기',
          //                   textAlign: TextAlign.center,
          //                   style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 14,
          //                     fontFamily: 'Roboto',
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.10,
          //                     letterSpacing: 0.25,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 20,
          //               top: 145,
          //               child: Text(
          //                 '아이펠 소아청소년과의원',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 24,
          //               top: 210,
          //               child: Text(
          //                 '2024/07/11(목) 오전 10:30',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 24,
          //               top: 226,
          //               child: Text(
          //                 '다음엔 건강한 모습으로 만나요',
          //                 style: TextStyle(
          //                   color: Colors.black.withOpacity(0.5799999833106995),
          //                   fontSize: 12,
          //                   fontFamily: 'Noto Sans KR',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.12,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 237,
          //               top: 149,
          //               child: Container(
          //                 width: 40,
          //                 height: 30.59,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: NetworkImage("https://via.placeholder.com/40x31"),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 248,
          //               top: 172,
          //               child: Text(
          //                 '\n아이유',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 11,
          //               top: 337,
          //               child: Container(
          //                 width: 284,
          //                 height: 75,
          //                 decoration: ShapeDecoration(
          //                   color: Colors.white,
          //                   shape: RoundedRectangleBorder(
          //                     side: BorderSide(
          //                       width: 1,
          //                       color: Colors.black.withOpacity(0),
          //                     ),
          //                     borderRadius: BorderRadius.circular(10),
          //                   ),
          //                   shadows: [
          //                     BoxShadow(
          //                       color: Color(0x26000000),
          //                       blurRadius: 4,
          //                       offset: Offset(0, 4),
          //                       spreadRadius: 0,
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 9,
          //               top: 40,
          //               child: Container(
          //                 width: 21.09,
          //                 height: 34,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: NetworkImage("https://via.placeholder.com/21x34"),
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 223.73,
          //               top: 29,
          //               child: Container(
          //                 width: 39.27,
          //                 height: 36,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: NetworkImage("https://via.placeholder.com/39x36"),
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 262.86,
          //               top: 29,
          //               child: Container(
          //                 width: 35.14,
          //                 height: 36,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: NetworkImage("https://via.placeholder.com/35x36"),
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 30,
          //               top: 359,
          //               child: Container(
          //                 width: 249,
          //                 height: 37,
          //                 child: Stack(
          //                   children: [
          //                     Positioned(
          //                       left: 0,
          //                       top: 4,
          //                       child: Container(
          //                         width: 40,
          //                         height: 29,
          //                         child: Stack(
          //                           children: [
          //                             Positioned(
          //                               left: 0,
          //                               top: 0,
          //                               child: Container(
          //                                 width: 30,
          //                                 height: 25.56,
          //                                 decoration: BoxDecoration(
          //                                   image: DecorationImage(
          //                                     image: NetworkImage("https://via.placeholder.com/30x26"),
          //                                     fit: BoxFit.fill,
          //                                   ),
          //                                 ),
          //                               ),
          //                             ),
          //                             Positioned(
          //                               left: 18,
          //                               top: 9,
          //                               child: Container(
          //                                 width: 22,
          //                                 height: 20,
          //                                 decoration: BoxDecoration(
          //                                   image: DecorationImage(
          //                                     image: NetworkImage("https://via.placeholder.com/22x20"),
          //                                     fit: BoxFit.contain,
          //                                   ),
          //                                 ),
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                     Positioned(
          //                       left: 48,
          //                       top: 0,
          //                       child: Text(
          //                         '빠르게 접수 하고 싶으신가요? ',
          //                         style: TextStyle(
          //                           color: Colors.black.withOpacity(0.5799999833106995),
          //                           fontSize: 12,
          //                           fontFamily: 'Noto Sans KR',
          //                           fontWeight: FontWeight.w400,
          //                           height: 0.12,
          //                         ),
          //                       ),
          //                     ),
          //                     Positioned(
          //                       left: 46,
          //                       top: 17,
          //                       child: Text(
          //                         '주민등록번호를 미리 입력해 보세오',
          //                         style: TextStyle(
          //                           color: Colors.black,
          //                           fontSize: 14,
          //                           fontFamily: 'Noto Sans KR',
          //                           fontWeight: FontWeight.w700,
          //                           height: 0.10,
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 9,
          //               top: 442,
          //               child: Container(
          //                 width: 285,
          //                 height: 145,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: NetworkImage("https://via.placeholder.com/285x145"),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             // Positioned(
          //             //   left: 28,
          //             //   top: 45,
          //             //   child: Stack(
          //             //     children: [
          //             //       Positioned(
          //             //         left: 0,
          //             //         top: 0,
          //             //         child: Text(
          //             //           '서초동 ',
          //             //           style: TextStyle(
          //             //             color: Colors.black,
          //             //             fontSize: 13,
          //             //             fontFamily: 'Noto Sans KR',
          //             //             fontWeight: FontWeight.w700,
          //             //             height: 0.11,
          //             //           ),
          //             //         ),
          //             //       ),
          //             //     ],
          //             //   ),
          //             // ),
          //             Positioned(
          //               left: 0,
          //               top: 611,
          //               child: Container(
          //                 width: 305,
          //                 decoration: ShapeDecoration(
          //                   shape: RoundedRectangleBorder(
          //                     side: BorderSide(
          //                       width: 1,
          //                       strokeAlign: BorderSide.strokeAlignCenter,
          //                       color: Color(0xD8AFAFAF),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 186,
          //               top: 621,
          //               child: Container(
          //                 width: 20,
          //                 height: 17,
          //                 child: Stack(
          //                   children: [
          //                     Positioned(
          //                       left: 0,
          //                       top: 0,
          //                       child: Container(
          //                         width: 13,
          //                         height: 11,
          //                         padding: const EdgeInsets.symmetric(horizontal: 1.08, vertical: 0.92),
          //                         clipBehavior: Clip.antiAlias,
          //                         decoration: BoxDecoration(),
          //                         child: Row(
          //                           mainAxisSize: MainAxisSize.min,
          //                           mainAxisAlignment: MainAxisAlignment.center,
          //                           crossAxisAlignment: CrossAxisAlignment.center,
          //                           // children: [
          //                           // ,
          //                           // ],
          //                         ),
          //                       ),
          //                     ),
          //                     Positioned(
          //                       left: 7,
          //                       top: 6,
          //                       child: Container(
          //                         width: 13,
          //                         height: 11,
          //                         padding: const EdgeInsets.symmetric(horizontal: 1.08, vertical: 0.92),
          //                         clipBehavior: Clip.antiAlias,
          //                         decoration: ShapeDecoration(
          //                           shape: RoundedRectangleBorder(
          //                             side: BorderSide(
          //                               width: 1,
          //                               color: Colors.black.withOpacity(0),
          //                             ),
          //                           ),
          //                           shadows: [
          //                             BoxShadow(
          //                               color: Color(0x3F000000),
          //                               blurRadius: 4,
          //                               offset: Offset(0, 4),
          //                               spreadRadius: 0,
          //                             )
          //                           ],
          //                         ),
          //                         child: Row(
          //                           mainAxisSize: MainAxisSize.min,
          //                           mainAxisAlignment: MainAxisAlignment.center,
          //                           crossAxisAlignment: CrossAxisAlignment.center,
          //                           // children: [
          //                           // ,
          //                           // ],
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 181,
          //               top: 642,
          //               child: Text(
          //                 '커뮤니티',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Color(0xFFA3A3A3),
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 89,
          //               top: 642,
          //               child: Text(
          //                 '나의 똑닥',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Color(0xFFA3A3A3),
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 32,
          //               top: 642,
          //               child: Text(
          //                 '홈',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 249,
          //               top: 644,
          //               child: Text(
          //                 '마이페이지',
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   color: Color(0xFFA3A3A3),
          //                   fontSize: 10,
          //                   fontFamily: 'Roboto',
          //                   fontWeight: FontWeight.w400,
          //                   height: 0.16,
          //                   letterSpacing: 0.25,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 260,
          //               top: 620,
          //               child: Container(
          //                 width: 24,
          //                 height: 24,
          //                 padding: const EdgeInsets.all(4),
          //                 child: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   // children: [
          //                   // ,
          //                   // ],
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ], 
          //   ),
          // ), 
        ),
      ); 
  }
} 