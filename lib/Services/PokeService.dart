import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Models/SaveModel.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../Stores/pokemons.dart';

class PokeService{


  Color findColor(type){
    if(type == "fire"){
      return Colors.red;
    }else if(type == "water"){
      return Colors.blue;
    }else if(type == "grass"){
      return Colors.green;
    }else if(type == "fairy"){
      return Colors.purpleAccent;
    }else if(type == "electric"){
      return Colors.yellow;
    }else if(type == "psychic"){
      return Colors.deepPurpleAccent;
    }else if(type == "rock"){
      return Colors.brown;
    }else if(type == "ground"){
      return Colors.brown;
    }else if(type == "bug"){
      return Colors.lightGreen;
    }
    else if(type == "flying"){
      return Colors.lightBlue;
    }else if(type == "normal"){
      return Colors.grey;
    }else if(type == "poison"){
      return Colors.deepPurple;
    }
    else{
      return Colors.black;
    }


  }

  Future getPokemonById(id) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    var pokemon = json.decode(response.body);

    var color = findColor(pokemon["types"][0]["type"]["name"]);
    PokemonModel pokemonModel = PokemonModel(
        pokemon["id"],
        pokemon["name"],
        pokemon["stats"][4]["base_stat"],
        pokemon["stats"][3]["base_stat"],
        pokemon["stats"][5]["base_stat"],
        pokemon["sprites"]["front_default"],
        pokemon["types"][0]["type"]["name"],
        color
    );

    pokeStore.addPokemon(pokemonModel);

    print(pokemon["id"]);

  }


}
var pokeService = PokeService();