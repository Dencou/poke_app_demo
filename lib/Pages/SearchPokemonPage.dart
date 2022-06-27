import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';

import '../Services/PokeService.dart';
import '../Stores/pokemons.dart';

import '../Widgets/FavoriteCard.dart';
import '../Widgets/SearchItemWidget.dart';

class SearchPokemonPage extends StatefulWidget {
  const SearchPokemonPage({Key? key}) : super(key: key);

  @override
  _SearchPokemonPageState createState() => _SearchPokemonPageState();
}

class _SearchPokemonPageState extends State<SearchPokemonPage> {
  @override
  Widget build(BuildContext context) {


    PokemonModel pokemon = pokeStore.searchPokemon;

    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 80,
            title: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child:  TextField(
                onSubmitted: (String value) async {
                  await pokeService.getPokemonById(value,true);
                  setState(() {
                  });
                },
                textInputAction: TextInputAction.go,
                decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    label: Text("Search your favorite pokemon here!"),
                    fillColor: Colors.white,
                    border: OutlineInputBorder()
                ),
              ),
            )
        ),
        body: pokemon.name != ""
            ? SearchItem(pokemon)
            : const Center(
          child: Text("Search for a pokemon now!", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),),
        )
    );
  }
  }


