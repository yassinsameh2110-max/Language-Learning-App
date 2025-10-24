import 'package:basketball_points/Componants/item.dart';
import 'package:basketball_points/models/numberModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumbersScreen extends StatelessWidget {
  final List<Model> numbers = [
    Model(image: "assets/images/numbers/number_one.png", jpName: "Ichi", enName: "One", sound: "sounds/numbers/number_one_sound.mp3"),
    Model(image: "assets/images/numbers/number_two.png", jpName: "Ni", enName: "Two", sound: "sounds/numbers/number_two_sound.mp3"),
    Model(image: "assets/images/numbers/number_three.png", jpName: "San", enName: "Three", sound: "sounds/numbers/number_three_sound.mp3"),
    Model(image: "assets/images/numbers/number_four.png", jpName: "Shi", enName: "Four", sound: "sounds/numbers/number_four_sound.mp3"),
    Model(image: "assets/images/numbers/number_five.png", jpName: "Go", enName: "Five", sound: "sounds/numbers/number_five_sound.mp3"),
    Model(image: "assets/images/numbers/number_six.png", jpName: "Roku", enName: "Six", sound: "sounds/numbers/number_six_sound.mp3"),
    Model(image: "assets/images/numbers/number_seven.png", jpName: "Nana", enName: "Seven", sound: "sounds/numbers/number_seven_sound.mp3"),
    Model(image: "assets/images/numbers/number_eight.png", jpName: "Hachi", enName: "Eight", sound: "sounds/numbers/number_eight_sound.mp3"),
    Model(image: "assets/images/numbers/number_nine.png", jpName: "Kyuu", enName: "Nine", sound: "sounds/numbers/number_nine_sound.mp3"),
    Model(image: "assets/images/numbers/number_ten.png", jpName: "Juu", enName: "Ten", sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  

  NumbersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Color(0xff533D35),
        title: Text(
          'Numbers',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final Color color = Color(0xffFF9F37);

          return Item(number: numbers[index], color: color);
        },
      ),
    );
  }
}
