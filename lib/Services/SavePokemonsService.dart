import 'package:flutter/cupertino.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:localstore/localstore.dart';

import '../Models/SaveModel.dart';
import '../main.dart';

class SavePokemonsService {

  savePokemons(SaveModel saveModel){
    if(pokeSave.savedPokemons.contains(saveModel.name)){
      return;
    }else{
      pokeSave.savePokemons(saveModel);
    }

  }

}
var savePokemonsService = SavePokemonsService();