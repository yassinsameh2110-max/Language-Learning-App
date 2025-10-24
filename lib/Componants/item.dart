import 'package:basketball_points/Componants/subItem.dart';
import 'package:basketball_points/models/numberModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  final Model number;
  const Item({super.key, required this.number, required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 16.0 ,right: 16.0),
      child: Container(
          height: 100.h,
        color: color,
        child: Row(
          children: [
            Container(
              color: Color(0xffFFF6DC),
              height: 100.h,
              width: 80.w,
              child: Image.asset(number.image),
            ),
         Expanded(child:  SubItem(number: number))
          ],
        ),
      ),
    );
  }
}


