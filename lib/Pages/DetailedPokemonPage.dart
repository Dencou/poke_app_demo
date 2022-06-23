import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';
import 'package:poke_app_demo/Widgets/StatsCardBorderWidget.dart';
import 'package:poke_app_demo/Widgets/StatsCardWidget.dart';

class DetailedPokemonPage extends StatelessWidget {

  int id;
  DetailedPokemonPage(this.id);

  @override
  Widget build(BuildContext context) {
    var a = pokeSave.savedPokemons.firstWhere((element) => element.id == id);

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(a.name,style: TextStyle(color: Colors.black),),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 10,left: 10),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  Positioned(
                    top: -80,
                    child: Row(
                      children: [
                        Image.network(
                          a.sprite_front,
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 30,),
                        Image.network(
                          a.sprite_back,
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ],
                    )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 100
                      ),
                      // stats column
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10
                        ),
                        //Stats
                        child: Column(
                          children: [
                            Text('hola'),
                            Row(
                              children: [
                                StatsCardBorderWidget(
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: a.getColor(),
                                      hint: "hola",
                                      res: "test",
                                      onlyRight: false,
                                      blackRes: true,
                                      blackHint: false,
                                    )
                                ),
                                Spacer(),
                                StatsCardBorderWidget(
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: a.getColor(),
                                      hint: "hola",
                                      res: "test",
                                      onlyRight: false,
                                      blackRes: true,
                                      blackHint: false,
                                    )
                                ),

                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                StatsCardBorderWidget(
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: a.getColor(),
                                      hint: "hola",
                                      res: "test",
                                      onlyRight: false,
                                      blackRes: true,
                                      blackHint: false,
                                    ),
                                ),
                                const Spacer(),
                                StatsCardBorderWidget(
                                    inside: const Center(
                                      child: Text(
                                          'Type:test',
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ),


                            ]
                            ),
                            const Text("test"),


                          ],
                        ),
                      )
                  ),


                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 10,right: 10),
              child: Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Text("Bulbasaur is a pokemon type ${a.type}, he's week against fire type but strong against Ground", textAlign: TextAlign.center,)

                    ],
                  ),
                )
                ),

              ),


          ],
        ),
      )
    );
  }
}
