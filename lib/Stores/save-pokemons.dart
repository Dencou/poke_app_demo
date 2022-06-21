import 'package:mobx/mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Models/SaveModel.dart';

part 'save-pokemons.g.dart';

class SavePokemons = SavePokemonsBase with _$SavePokemons;

abstract class SavePokemonsBase with Store {

  @observable
  List<PokemonModel> savedPokemons = [];

  @action
  void savePokemons(PokemonModel savedPokemon){

    savedPokemons = [
      ...savedPokemons,
      savedPokemon
    ];

  }

  @action
  void setSavedPokemons(savedPokemons) {
    this.savedPokemons = savedPokemons;
  }
}
var pokeSave = SavePokemons();