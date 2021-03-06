import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Widgets/PokemonWidget.dart';
import '../Services/PokeService.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();

    return Scaffold(
        body: Observer(
          builder: (
              BuildContext context
              ){
          return PageView(
            onPageChanged: (currentPageNumber) {
              var pageCount =  pokeStore.pokemons.length - 1;
              var id = pokeStore.pokemons[pageCount].id += 1;
              pokeService.getPokemonById(id, false);
            },
            controller: controller,
            scrollDirection: Axis.vertical,
            children: [
              ...pokeStore.pokemons.map((e)=> PokemonWidget(pokemon: e,))
            ],
          );
        },)
    );
  }
}
