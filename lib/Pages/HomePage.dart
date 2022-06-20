import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';

import 'package:poke_app_demo/Widgets/PokemonWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();

    var a = controller.positions;

    controller.addListener( () {
      if(controller.page == pokeStore.pokemons.length - 1){
        pokeStore.addPokemon(PokemonModel(1, "pokachu", "23", "123", "23", "asdas", "fire"),);
      }
    });

    return Scaffold(
        backgroundColor: Colors.green,

        body: Observer(builder: (BuildContext context) {
          return PageView(
            onPageChanged: (a) => {print("holla")},
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
