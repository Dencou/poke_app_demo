import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poke_app_demo/Pages/SearchPokemonPage.dart';

import 'Pages/HomePage.dart';
import 'Services/PokeService.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Title Test',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}