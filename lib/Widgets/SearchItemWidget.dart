import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';

import '../Pages/DetailedPokemonPage.dart';
import '../Services/PokeService.dart';

class SearchItem extends StatelessWidget {



  PokemonModel pokemon;
  SearchItem(this.pokemon);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // whet tapped it awaits the typeStrongWeak request, and then it navigates
      onTap: () async => {
        //await pokeService.typeStrongWeak(saveModel.id),
        await pokeService.typeStrongWeak(pokemon.id),
        Get.to(DetailedPokemonPage(pokemon, true)),
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                decoration: BoxDecoration(
                  color: pokemon.getColor(),
                  borderRadius: BorderRadius.circular(30),),
                width: double.infinity,
                child: Row(
                  children: [
                    Image.network(
                      pokemon.sprite_front,
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      pokemon.name,
                      style: const TextStyle(
                          fontSize: 20
                      ),
                    ),

                  ],

                ),

              ),
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
