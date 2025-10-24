import 'package:basketball_points/Componants/pharses.dart';
import 'package:basketball_points/models/numberModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
   final List<Model> numbers = [
    Model(image: "assets/images/family_members/family_father.png", jpName: "Ichi", enName: "father", sound: "sounds/family_members/father.wav"),
    Model(image: "assets/images/family_members/family_mother.png", jpName: "Ni", enName: "mother", sound: "sounds/family_members/mother.wav"),
    Model(image: "assets/images/family_members/family_son.png", jpName: "San", enName: "son", sound: "sounds/family_members/son.wav"),
    Model(image: "assets/images/family_members/family_daughter.png", jpName: "Shi", enName: "daughter", sound: "sounds/family_members/daughter.wav"),
    Model(image: "assets/images/family_members/family_grandfather.png", jpName: "Go", enName: "grandfather", sound: "sounds/family_members/grandfather.wav"),
    Model(image: "assets/images/family_members/family_grandmother.png", jpName: "Roku", enName: "grandmother", sound: "sounds/family_members/grandmother.wav"),
    Model(image: "assets/images/family_members/family_older_brother.png", jpName: "Nana", enName: "older brother", sound: "sounds/family_members/older_brother.wav"),
    Model(image: "assets/images/family_members/family_older_sister.png", jpName: "Hachi", enName: "older sister", sound: "sounds/family_members/older_sister.wav"),
    Model(image: "assets/images/family_members/family_younger_brother.png", jpName: "Kyuu", enName: "younger brother", sound: "sounds/family_members/younger_brother.wav"),
    Model(image: "assets/images/family_members/family_younger_sister.png", jpName: "Juu", enName: "younger sister", sound: "sounds/family_members/younger_sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Color(0xff533D35),
        title: Text(
          'Phrases',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final Color color = Colors.blue;
          return Phrases(number: numbers[index], color: color);
        },
      ),
    );
  }
}