import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCardWidget extends StatelessWidget {

  double height;
  double width;
  double radius;
  String hint;
  String res;
  bool black;
  Color color;
  bool onlyRight;

  StatsCardWidget(
      {
        required this.height,
        required this.width,
        required this.radius,
        required this.color,
        required this.hint,
        required this.onlyRight,
        required this.res,
        required this.black
      }
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width:150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(7),
                    ),
                  ),
                    child: Center(
                      child: Text(
                        hint,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),

                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Center(
                    child: Text(
                      res,
                      textAlign: TextAlign.center,
                      style: black ? TextStyle(color: Colors.black) : TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )

          ],
        )
      ],
    );
  }
}
