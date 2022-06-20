import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:http/http.dart';

import '../Stores/pokemons.dart';

class PokeService{

  Future getPokemonById(id) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    if(response.body == 'Not Found'){
      return Get.snackbar(
        'Pokemon not found',
        'please enter a valid name or number',
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.white,
        duration: Duration(seconds: 1),

      );


    }else{
      var responsejson = json.decode(response.body);
      pokeStore.setPokemons(responsejson);

    }




  }


}
var pokeService = PokeService();