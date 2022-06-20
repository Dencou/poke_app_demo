import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';

import '../Stores/pokemons.dart';

class PokeService{

  Future getPokemonById(id) async {
    print("ASdasd");
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    var pokemon = json.decode(response.body);


    PokemonModel pokemonModel = PokemonModel(
        pokemon["id"],
        pokemon["name"],
        pokemon["height"],
        pokemon["weight"],
        pokemon["height"],
        pokemon["sprites"]["front_default"],
        pokemon["name"]);


    pokeStore.addPokemon(pokemonModel);

    print(pokemon["id"]);

  }


}
var pokeService = PokeService();