import 'package:mobx/mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';



part 'pokemons.g.dart';

class PokeStore = PokeStoreBase with _$PokeStore;

abstract class PokeStoreBase with Store {
  @observable
  List<PokemonModel> pokemons = [
    PokemonModel(1, "pokachu", "23", "123", "23", "asdas", "fire"),
    PokemonModel(1, "pokachu", "23", "123", "23", "asdas", "fire"),
    PokemonModel(1, "pokachu", "23", "123", "23", "asdas", "fire"),
    PokemonModel(1, "pokachu", "23", "123", "23", "asdas", "fire"),
  ];

  @action
  void addPokemon(pokemon){
    pokemons.add(pokemon);

  }

  @action
  void setPokemons(pokemons) {

    this.pokemons = pokemons;

  }
}
var pokeStore = PokeStore();