import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Services/PokeService.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';
import 'package:poke_app_demo/Widgets/StatsCardBorderWidget.dart';
import 'package:poke_app_demo/Widgets/StatsCardWidget.dart';

class DetailedPokemonPage extends StatelessWidget {

  int id;
  DetailedPokemonPage(this.id);

  @override
  Widget build(BuildContext context) {

    var pokemon = pokeSave.savedPokemons.firstWhere((element) => element.id == id);
    pokeService.typeStrongWeak(id);

    return Scaffold(

      backgroundColor: pokemon.getColor(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(pokemon.name,style: const TextStyle(color: Colors.black),),
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
                          pokemon.sprite_front,
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 30,),
                        Image.network(
                          pokemon.sprite_back,
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
                            Row(
                              children: [
                                StatsCardBorderWidget(
                                    infinity: false,
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: pokemon.getColor(),
                                      hint: "Attack",
                                      res: pokemon.attack.toString(),
                                      onlyRight: false,
                                      blackRes: true,
                                      blackHint: false,
                                    )
                                ),
                                const Spacer(),
                                StatsCardBorderWidget(
                                    infinity: false,
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: pokemon.getColor(),
                                      hint: "Defense",
                                      res: pokemon.defense.toString(),
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
                                  infinity: false,
                                    inside: StatsCardWidget(
                                      height: 80,
                                      width: 80,
                                      radius: 8,
                                      color: pokemon.getColor(),
                                      hint: "Hp",
                                      res: pokemon.hp.toString(),
                                      onlyRight: false,
                                      blackRes: true,
                                      blackHint: false,
                                    ),
                                ),
                                const Spacer(),
                                StatsCardBorderWidget(
                                    infinity: false,
                                    inside: Center(
                                      child: Text(
                                          'Type:${pokemon.type}',
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ),
                            ]
                            ),
                            SizedBox(height: 20,),
                            StatsCardBorderWidget(
                              infinity: true,
                                inside: Center(
                                  child: Text(
                                    'Abilities: ${pokemon.abilities.map(
                                            (e) => e["ability"]["name"]
                                    ).join(",")}',
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10,right: 10),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text("Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Text("${pokemon.name} is a pokemon type ${pokemon.type}, he's week against ${pokeStore.doubleDamageFrom.join(", ")} type but strong against ${pokeStore.doubleDamageTo.join(", ")}",
                        textAlign: TextAlign.start,)

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
