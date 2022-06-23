import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/PokeService.dart';
import '../Stores/pokemons.dart';

import '../Widgets/FavoriteCard.dart';

class SearchPokemonPage extends StatefulWidget {
  const SearchPokemonPage({Key? key}) : super(key: key);

  @override
  _SearchPokemonPageState createState() => _SearchPokemonPageState();
}

class _SearchPokemonPageState extends State<SearchPokemonPage> {
  @override
  Widget build(BuildContext context) {
    var pokemon = pokeStore.pokemons.firstWhere((element) => element.id == pokeStore.pokemons[0].id);

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
        body: pokeStore.pokemons.isNotEmpty ? FavoriteCard(saveModel: pokemon,) : Text("Search for a pokemon now!")
    );
  }
  }


