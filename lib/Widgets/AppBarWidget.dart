import 'package:flutter/material.dart';
import 'package:poke_app_demo/Services/PokeService.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  TextEditingController nameController = TextEditingController();
  AppBarWidget(this.nameController);



  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child:  TextField(
            controller: nameController,
            onSubmitted: (String value) async {
              await pokeService.getPokemonById(value, true);
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
    );

  }
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
