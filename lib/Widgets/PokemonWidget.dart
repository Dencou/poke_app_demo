import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Widgets/StatsCardWidget.dart';

class PokemonWidget extends StatelessWidget {

  Color textColor = Colors.white;
  Color typeColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 20),

        // main column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("hola"),
            Icon(Icons.heart_broken_rounded)
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("pokemon nro: 23", style: TextStyle(color: textColor),),
            Text("pokemon name", style: TextStyle(color: textColor, fontSize: 26),),
          ],


        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 300),

              //image & stats stack
              child: Stack(
                clipBehavior: Clip.none, alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),)
                  ),
                  Positioned(
                    top: -80,
                    child: Image.network('https://picsum.photos/250?image=2',width: 150,height: 160,),
                  ),

                Padding(
                  padding: EdgeInsets.only(top: 100),
                  // stats column
                  child: Column(
                    children: [
                      Row(
                        children: [

                          StatsCardWidget(height: 40, width: 100, radius: 8, color: Colors.red, text: "Attack")


                        ],
                      )
                    ],
                  ),
                )
                ],
              ),
            )
          ],
        )
      ],
    ),
    );
  }
}

