
import 'package:poke_app_demo/Models/PokemonModel.dart';
import 'package:poke_app_demo/Stores/save-pokemons.dart';
import 'package:localstore/localstore.dart';


class SavePokemonsService {

  final db = Localstore.instance;
  final collection = 'poke';

  createPokemon(PokemonModel poke) async {
    final id = db.collection(collection).doc().id;

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
}
var savePokemonsService = SavePokemonsService();