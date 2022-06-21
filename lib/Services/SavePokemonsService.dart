import 'package:flutter/cupertino.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:localstore/localstore.dart';

import '../Models/SaveModel.dart';
import '../main.dart';

class SavePokemonsService {

  final db = Localstore.instance;

  savePokemonss(){
    final id = db.collection('todos').doc().id;

// save the item
    db.collection('todos').doc(id).set({
      'title': 'Todo title',
      'done': false
    });
  }




  savePokemons(SaveModel saveModel){
    if(pokeSave.savedPokemons.contains(saveModel.name)){
      return;
    }else{
      pokeSave.savePokemons(saveModel);
    }

  }

}
var savePokemonsService = SavePokemonsService();