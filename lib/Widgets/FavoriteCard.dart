import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';

import '../Services/SavePokemonsService.dart';

class FavoriteCard extends StatelessWidget {

  PokemonModel saveModel;
  FavoriteCard({required this.saveModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: saveModel.getColor(),
                  borderRadius: BorderRadius.circular(30),),
                width: double.infinity,
                child: Row(
                  children: [
                    Image.network(
                      saveModel.sprite_front,
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      saveModel.name,
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
    );
  }
}
