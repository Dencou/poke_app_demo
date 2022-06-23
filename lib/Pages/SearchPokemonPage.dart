import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app_demo/Widgets/AppBarWidget.dart';

class SearchPokemonPage extends StatelessWidget {

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(name),
      body: Container(

      ),
    );
  }
}
