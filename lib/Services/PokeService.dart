import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poke_app_demo/Models/PokemonModel.dart';



import '../Stores/pokemons.dart';

class PokeService{




  Future getPokemonById(id) async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$id');
    var response = await http.get(url);
    var pokemon = json.decode(response.body);

    PokemonModel pokemonModel = PokemonModel(
        pokemon["id"],
        pokemon["name"],
        pokemon["stats"][4]["base_stat"],
        pokemon["stats"][3]["base_stat"],
        pokemon["stats"][5]["base_stat"],
        pokemon["sprites"]["front_default"],
        pokemon["types"][0]["type"]["name"],
        0xFFB74093
    );

    pokeStore.addPokemon(pokemonModel);

    print(pokemon["id"]);

  }


}
var pokeService = PokeService();