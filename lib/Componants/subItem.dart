import 'package:audioplayers/audioplayers.dart';
import 'package:basketball_points/models/numberModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubItem extends StatelessWidget {
  const SubItem({super.key, required this.number});
  final Model number;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      number.jpName,
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                    Text(
                      number.enName,
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  icon: Icon(Icons.play_arrow, size: 30.sp, color: Colors.white),
                  onPressed: () {
                   final player = AudioPlayer();
                    player.play(AssetSource(number.sound));
                  },
                ),
              ),
      ],
    );
  }
}