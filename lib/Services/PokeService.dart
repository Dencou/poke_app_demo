import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';



import '../Stores/pokemons.dart';

class PokeService{

  Future getPokemonById(id, bool search) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    var pokemon = json.decode(response.body);
    print(pokemon["name"]);
    PokemonModel pokemonModel = PokemonModel(
        pokemon["id"],
        pokemon["name"],
        pokemon["stats"][4]["base_stat"],
        pokemon["stats"][3]["base_stat"],
        pokemon["stats"][5]["base_stat"],
        pokemon["sprites"]["front_default"],
        pokemon["sprites"]["back_default"],
        pokemon["types"][0]["type"]["name"],
        pokemon["types"][0]["type"]["url"],
        pokemon["abilities"],
        0xFFB74093
    );

    pokeStore.addPokemon(pokemonModel);

    if(search == true){
      pokeStore.setSearch(pokemonModel);

    }

  }

  Future savedTypeStrongWeak(id)async{

    var url = Uri.parse(pokeSave.savedPokemons.firstWhere((pokemon) => pokemon.id == id).typeUrl);
    var response = await http.get(url);
    var responsejson =  json.decode(response.body);
    print(responsejson);

    var doubleDamageFrom = List.from(responsejson['damage_relations']['double_damage_from'].map((e) => e['name'])).toList();
    var doubleDamageTo = List.from(responsejson['damage_relations']['double_damage_to'].map((e) => e['name'])).toList();

    pokeStore.setDoubleDamage(doubleDamageFrom, doubleDamageTo);

  }

  Future typeStrongWeak(id)async{

    var url = Uri.parse(pokeStore.pokemons.firstWhere((pokemon) => pokemon.id == id).typeUrl);
    var response = await http.get(url);
    var responsejson =  json.decode(response.body);
    print(responsejson);

    var doubleDamageFrom = List.from(responsejson['damage_relations']['double_damage_from'].map((e) => e['name'])).toList();
    var doubleDamageTo = List.from(responsejson['damage_relations']['double_damage_to'].map((e) => e['name'])).toList();

    pokeStore.setDoubleDamage(doubleDamageFrom, doubleDamageTo);

  }

}
var pokeService = PokeService();