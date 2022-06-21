import 'package:mobx/mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';



part 'pokemons.g.dart';

class PokeStore = PokeStoreBase with _$PokeStore;

abstract class PokeStoreBase with Store {
  @observable
  List<PokemonModel> pokemons = [];

  @action
  void addPokemon(PokemonModel pokemon){
    pokemons = [
      ...pokemons,
      pokemon
    ];
  }

  @action
  void setPokemons(pokemons) {
    this.pokemons = pokemons;

  }
}
var pokeStore = PokeStore();