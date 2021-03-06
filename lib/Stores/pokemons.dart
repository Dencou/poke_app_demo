import 'package:mobx/mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';



part 'pokemons.g.dart';

class PokeStore = PokeStoreBase with _$PokeStore;

abstract class PokeStoreBase with Store {
  @observable
  List<PokemonModel> pokemons = [];

  @observable
  PokemonModel searchPokemon = PokemonModel(0,"",0,0,0,"","","","",[], 0);

  @observable
  List doubleDamageFrom = [];

  @observable
  List doubleDamageTo = [];

  @action
  void addPokemon(PokemonModel pokemon){
    pokemons = [
      ...pokemons,
      pokemon
    ];
  }

  @action
  void setDoubleDamage(List doubleDamageFrom, List doubleDamageTo){
    this.doubleDamageTo = doubleDamageTo;
    this.doubleDamageFrom = doubleDamageFrom;
  }

  @action
  void setPokemons(pokemons) {
    this.pokemons = pokemons;
  }
  @action
  void setSearch(PokemonModel pokemon){
    this.searchPokemon = pokemon;

  }


}
var pokeStore = PokeStore();