import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poke_app_demo/Pages/DetailedPokemonPage.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Widgets/FavoriteCard.dart';

import '../Services/SavePokemonsService.dart';
import '../Stores/save-pokemons.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("My Favorites",style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child:  Column(
            children: [
              ...pokeSave.savedPokemons.map((e) => FavoriteCard(saveModel: e, detail: false,)),
            ],
          ),
      )
    );
  }
}
