import 'package:basketball_points/Componants/subItem.dart';
import 'package:basketball_points/models/numberModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Phrases extends StatelessWidget {
  final Model number;
  final Color color;
  const Phrases({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16 ,right: 16),
      child: Container(
         color: color,
         height: 100.h,
        child: Row(
          children: [
         Expanded(child: SubItem(number: number))
          ],
        ),
      ),
    );
  }
}