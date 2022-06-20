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

  StatsCardWidget({required this.height, required this.width, required this.radius, required this.color, required this.hint,required this.onlyRight, required this.res});

  @override
  Widget build(BuildContext context) {



    return Column(
      children: [
        Row(
          children: [

            Container(
              width:150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(7),

                    ),
                  ),
                    child: Center(
                      child: Text(hint, textAlign: TextAlign.center,),

                    ),
                  ),
                  SizedBox(width: 12,),
                  Text(res),
                ],
              ),
            )



          ],
        )
      ],
    );
  }
}
