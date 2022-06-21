import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';

import '../Stores/save-pokemons.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
