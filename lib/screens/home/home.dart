import 'package:basketball_points/Componants/category.dart';
import 'package:basketball_points/screens/family_members/family.dart';
import 'package:basketball_points/screens/numbers/numbers.dart';
import 'package:basketball_points/screens/phrases/phrases.dart';
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersScreen();
              }) );
            }, ),
            Category(color: Color(0xff5D8B3E), text: 'Family Members',onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }) );
            },),
            Category(color: Color(0xff854CAE), text: 'Colors',onTap: () {
              print("color");
            },),
            Category(color: Color(0xff39A2DB), text: 'Phrases',onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }) );
            
            },),
          ],
        ),
      ),
    );
  }
}
