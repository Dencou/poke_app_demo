import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Pages/FavoritesPage.dart';
import 'package:poke_app_demo/Services/SavePokemonsService.dart';
import 'package:poke_app_demo/Widgets/StatsCardWidget.dart';
import '../Pages/SearchPokemonPage.dart';
import 'StatsCardBorderWidget.dart';


class PokemonWidget extends StatelessWidget {

  PokemonModel pokemon;
  PokemonWidget({required this.pokemon});

  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: pokemon.getColor(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 34,
            horizontal: 20
        ),
        // main column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    Get.to(SearchPokemonPage());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation : 0,
                    primary: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                  icon: const Icon( // <-- Icon
                    Icons.search,
                    size: 24.0,
                  ),
                  label: const Text('Search for a pokemon'), // <-- Text
                ),

                ElevatedButton.icon(
                  onPressed: () async {
                    await savePokemonsService.findAll().then((value) => print(value));
                    Get.to(const FavoritePage());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation : 0,
                    primary: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                  icon: const Icon( // <-- Icon
                    Icons.favorite,
                    size: 24.0,
                  ),
                  label: const Text('My Favorites'), // <-- Text
                ),
              ],
            ),
            //top texts
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pokemon nro: ${pokemon.id.toString()}",
                  style: TextStyle(
                      color: textColor
                  ),
                ),
                Text(
                  pokemon.name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 26
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  //image & stats stack
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
                        top: -100,
                        child: Image.network(
                          pokemon.sprite_front,
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 100),
                          // stats column
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            //Stats
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    StatsCardBorderWidget(
                                      infinity: false,
                                      inside: StatsCardWidget(
                                        height: 60,
                                        width: 60,
                                        radius: 8,
                                        color: pokemon.getColor(),
                                        hint: "Attack",
                                        onlyRight: false,
                                        res: pokemon.attack.toString(),
                                        blackRes: true,
                                        blackHint: false,
                                      ),
                                    ),
                                    const Spacer(),
                                    StatsCardBorderWidget(
                                      infinity: false,
                                      inside: StatsCardWidget(
                                        height: 60,
                                        width: 60,
                                        radius: 8,
                                        color: pokemon.getColor(),
                                        hint: "defense",
                                        onlyRight: false,
                                        res: pokemon.defense.toString(),
                                        blackRes: true,
                                        blackHint: false,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    StatsCardBorderWidget(
                                      infinity: false,
                                      inside: StatsCardWidget(
                                        height: 60,
                                        width: 60,
                                        radius: 8,
                                        color: pokemon.getColor(),
                                        hint: "HP",
                                        onlyRight: false,
                                        res: pokemon.hp.toString(),
                                        blackRes: true,
                                        blackHint: false,
                                      ),
                                    ),
                                    const Spacer(),
                                    StatsCardBorderWidget(
                                        infinity: false,
                                        inside: Center(
                                          child: Text(
                                            "Type: ${pokemon.type.toString()}",
                                            textAlign: TextAlign.center,)
                                          ,)
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                ElevatedButton(onPressed: () async{
                                  Get.snackbar(
                                      "Success",
                                      "Added successfully to favorites",
                                      backgroundColor: Colors.grey,
                                      colorText: Colors.white,
                                  );
                                  savePokemonsService.createPokemon(pokemon);
                                },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black54,
                                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                                ),
                                  child: const Text("Yo te elijo :D"),
                                )
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
      ),
    );
  }
}

