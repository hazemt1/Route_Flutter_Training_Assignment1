import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'StackedImage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 1),
                    height: 50,
                    color: HexColor('#8c2fc0'),
                    child: Text(
                      'الأخبار',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 1),
                      height: 50,
                      color: HexColor('#8c2fc0'),
                      child: Text(
                        'المجلات',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  StackedImage(
                    Info(
                      'مجلةالسياسة',
                      'assets/images/السياسة.jpg',
                    ),
                  ),
                  StackedImage(
                    Info(
                      'مجلةالتكنولوجيا',
                      'assets/images/التكنولوجيا.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  StackedImage(
                    Info(
                      'مجلةالرياضة',
                      'assets/images/الرياضة.jpg',
                    ),
                  ),
                  StackedImage(
                    Info(
                      'مجلةالسياحة',
                      'assets/images/السياحة.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  StackedImage(
                    Info(
                      'مجلةالصحة',
                      'assets/images/الصحة.png',
                    ),
                  ),
                  StackedImage(
                    Info(
                      'مجلة حواء',
                      'assets/images/حواء.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  StackedImage(
                    Info(
                      'مجلةالاقتصاد',
                      'assets/images/الاقتصاد.jpg',
                    ),
                  ),
                  StackedImage(
                    Info(
                      'مجلةالسيارات',
                      'assets/images/السيارات.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  StackedImage(
                    Info(
                      'مجلةالطهى',
                      'assets/images/الطهى.jpg',
                    ),
                  ),
                  StackedImage(
                    Info(
                      'مجلةالمعرفة',
                      'assets/images/المعرفة.jpg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
