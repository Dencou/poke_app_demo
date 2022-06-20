import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Services/PokeService.dart';
import 'package:poke_app_demo/Widgets/StatsCardWidget.dart';

import 'StatsCardBorderWidget.dart';

class PokemonWidget extends StatelessWidget {

  PokemonModel pokemon;
  PokemonWidget({required this.pokemon});


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
            Text("Añadir a favoritos"),
            Icon(Icons.heart_broken_rounded)
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.id.toString(), style: TextStyle(color: textColor),),
            Text(pokemon.name, style: TextStyle(color: textColor, fontSize: 26),),
          ],


        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),

              //image & stats stack
              child: Stack(
                clipBehavior: Clip.none, alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),)
                  ),
                  Positioned(
                    top: -80,
                    child: Image.network(pokemon.sprite_front,),
                  ),

                Padding(
                  padding: EdgeInsets.only(top: 100),
                  // stats column
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    //Stats
                    child: Column(
                      children: [
                        Row(
                          children: [
                            StatsCardBorderWidget(
                              inside: StatsCardWidget(
                              height: 60,
                              width: 60,
                              radius: 8,
                              color: Colors.green,
                              hint: "Attack",
                              onlyRight: false,
                              res: pokemon.attack.toString(),
                            ),
                            ),
                            Spacer(),
                            StatsCardBorderWidget(inside: StatsCardWidget(height: 60, width: 60, radius: 8, color: Colors.green, hint: "defense",onlyRight: false, res: pokemon.defense.toString(),),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            StatsCardBorderWidget(inside: StatsCardWidget(height: 60, width: 60, radius: 8, color: Colors.green, hint: "HP",onlyRight: false, res: pokemon.hp.toString() ,),),
                            Spacer(),
                            StatsCardBorderWidget(inside: Center(child: Text("type: ${pokemon.hp.toString()}", textAlign: TextAlign.center,),)),
                          ],
                        ),
                        SizedBox(height: 30,),
                        ElevatedButton(onPressed: ()=>{pokeService.getPokemonById(45)}, child: Text("Yo te elijo :D"), style: ElevatedButton.styleFrom(
                          primary: Colors.black54,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                        ),)




                      ],

                    ),
                  )
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

