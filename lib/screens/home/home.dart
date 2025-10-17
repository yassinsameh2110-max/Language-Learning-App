import 'package:basketball_points/Componants/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D35),
        title: Text(
          'Toku',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only( top:80, ),
        child: Column(
          children: [
            Category(color: Color(0xffFF9F37), text: 'Numbers',onTap: () {
              print('numbers');
            }, ),
            Category(color: Color(0xff5D8B3E), text: 'Family Members',onTap: () {
              print("family");
            },),
            Category(color: Color(0xff854CAE), text: 'Colors',onTap: () {
              print("color");
            },),
            Category(color: Color(0xff39A2DB), text: 'Phrases',onTap: () {
              print("a7a");
            },),
          ],
        ),
      ),
    );
  }
}
