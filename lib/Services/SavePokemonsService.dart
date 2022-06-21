import 'package:poke_app_demo/Stores/save-pokemons.dart';

import '../Models/SaveModel.dart';

class SavePokemonsService {

  savePokemons(SaveModel saveModel){
    pokeSave.savePokemons(saveModel);
  }

}
var savePokemonsService = SavePokemonsService();