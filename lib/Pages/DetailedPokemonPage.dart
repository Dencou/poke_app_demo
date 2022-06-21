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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 130, horizontal: 10),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  Positioned(
                    top: -80,
                    child: Row(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 30,),
                        Image.network(
                          'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ],
                    )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 100
                      ),
                      // stats column
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10
                        ),
                        //Stats
                        child: Column(
                          children: [
                            Row(
                              children: [Text("hola")],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              children: [Text("hola"),
                            ]
                            ),


                          ],
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
