import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Models/SaveModel.dart';
import 'package:poke_app_demo/Stores/pokemons.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';

class FavoriteCard extends StatelessWidget {

  SaveModel saveModel;
  FavoriteCard({required this.saveModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [

          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),),

                width: double.infinity,
                child: Row(
                  children: [
                    Image.network(saveModel.sprites,height: 100,width: 100, fit: BoxFit.fill,),
                    Text(saveModel.name, style: TextStyle(fontSize: 20),)
                  ],

                ),

              ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
