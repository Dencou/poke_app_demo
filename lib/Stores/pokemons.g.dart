// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeStore on PokeStoreBase, Store {
  late final _$pokemonsAtom =
      Atom(name: 'PokeStoreBase.pokemons', context: context);

  @override
  List<PokemonModel> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(List<PokemonModel> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  late final _$PokeStoreBaseActionController =
      ActionController(name: 'PokeStoreBase', context: context);

  @override
  void setPokemons(List<PokemonModel> pokemons) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setPokemons');
    try {
      return super.setPokemons(pokemons);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
