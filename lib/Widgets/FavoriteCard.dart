import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Pages/DetailedPokemonPage.dart';

import '../Services/SavePokemonsService.dart';

class FavoriteCard extends StatelessWidget {

  PokemonModel saveModel;
  FavoriteCard({required this.saveModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        print("id passed ======> ${saveModel.id}"),
        Get.to(DetailedPokemonPage(saveModel.id)),

      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
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
      ),
    );
  }
}
