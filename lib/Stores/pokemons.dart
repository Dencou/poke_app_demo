import 'package:mobx/mobx.dart';
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:mobx_codegen/mobx_codegen.dart';



part 'pokemons.g.dart';

class PokeStore = PokeStoreBase with _$PokeStore;

abstract class PokeStoreBase with Store {
  @observable
  List<PokemonModel> pokemons = [];

  @action
  void setPokemons(List<PokemonModel> pokemons) {

    this.pokemons = pokemons;

  }
}
var pokeStore = PokeStore();