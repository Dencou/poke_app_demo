import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCardWidget extends StatelessWidget {

  double height;
  double width;
  double radius;
  String hint;
  String res;
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
        required this.res
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
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Center(
                    child: Text(
                      res,
                      textAlign: TextAlign.center,
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
