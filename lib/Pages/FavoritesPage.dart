import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';

import '../Services/SavePokemonsService.dart';
import '../Stores/save-pokemons.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print("build list");

    savePokemonsService.findAll().then((value) => print(value));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...pokeSave.savedPokemons.map((e) => FavoriteCard(saveModel: e,)),
          ],
        ),
      )
    );
  }
}
