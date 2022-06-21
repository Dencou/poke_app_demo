import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';

class DetailedPokemonPage extends StatelessWidget {

  int id;
  DetailedPokemonPage(this.id);

  @override
  Widget build(BuildContext context) {
    var a = pokeSave.savedPokemons.firstWhere((element) => element.id == id);

    return Scaffold(
      body: FavoriteCard(saveModel: a,),
    );
  }
}
