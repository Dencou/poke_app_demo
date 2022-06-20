import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCardWidget extends StatelessWidget {

  double height;
  double width;
  double radius;
  String text;
  Color color;
  bool onlyRight;

  StatsCardWidget({required this.height, required this.width, required this.radius, required this.color, required this.text,required this.onlyRight});

  @override
  Widget build(BuildContext context) {



    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: onlyRight ? BorderRadius.only(bottomRight: Radius.circular(6), topRight: Radius.circular(6)) : BorderRadius.circular(6),

      ),

      child: Center(
        child: Text(text, textAlign: TextAlign.center,),
      ),
    );
  }
}
