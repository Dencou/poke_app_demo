
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:localstore/localstore.dart';

import '../Models/SaveModel.dart';

class SavePokemonsService {

  final db = Localstore.instance;

  final collection = 'poke';

  createPokemon(PokemonModel poke) async {
    final id = db.collection(collection).doc().id;

// save the item
    print('save');
    await db.collection(collection).doc(id).set(poke.toDynamic());
  }

  Future<List<PokemonModel>> findAll() async{
    var items =  await db.collection(collection).get();
    List<PokemonModel> resultLit = [];
    items?.forEach((e, d){
      try {
        resultLit.add(PokemonModel.fromMap(d));
      }catch(err){
        print(err);
      }
    });
    var l = resultLit.where((element) => element != null).toList();
    pokeSave.setSavedPokemons(l);
    return l;
  }




  savePokemons(PokemonModel saveModel){
    if(pokeSave.savedPokemons.contains(saveModel.name)){
      return;
    }else{
      pokeSave.savePokemons(saveModel);
    }

  }

}
var savePokemonsService = SavePokemonsService();