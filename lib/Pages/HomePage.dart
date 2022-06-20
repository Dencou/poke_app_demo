import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Widgets/PokemonWidget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();

    return Scaffold(
      backgroundColor: Colors.green,

      body: PokemonWidget(),
    );
  }
}
