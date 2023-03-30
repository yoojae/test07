import 'package:design_ui/widgets/contents.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE9ECED),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('바야바즈',
                      style: TextStyle(
                        color: Color(0xFF356A44),
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('새로운 탈모케어 서비스',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(height: 30,),
                Contents(
                    title: '탈모 관리',
                    subtitle: '정밀 진단 & 컨설팅',
                    icon: Icons.health_and_safety_outlined,
                    x: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -25),
                  child: const Contents(
                      title: '두피 관리',
                      subtitle: '파워 영양 스케일링',
                      icon: Icons.energy_savings_leaf_outlined,
                      x: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -45),
                  child: const Contents(
                    title: '바야바즈 추천',
                    subtitle: '추천 관리 프로세스',
                    icon: Icons.stacked_line_chart_rounded,
                    x: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
