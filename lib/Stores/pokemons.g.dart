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

  late final _$searchPokemonAtom =
      Atom(name: 'PokeStoreBase.searchPokemon', context: context);

  @override
  PokemonModel get searchPokemon {
    _$searchPokemonAtom.reportRead();
    return super.searchPokemon;
  }

  @override
  set searchPokemon(PokemonModel value) {
    _$searchPokemonAtom.reportWrite(value, super.searchPokemon, () {
      super.searchPokemon = value;
    });
  }

  late final _$doubleDamageFromAtom =
      Atom(name: 'PokeStoreBase.doubleDamageFrom', context: context);

  @override
  List<dynamic> get doubleDamageFrom {
    _$doubleDamageFromAtom.reportRead();
    return super.doubleDamageFrom;
  }

  @override
  set doubleDamageFrom(List<dynamic> value) {
    _$doubleDamageFromAtom.reportWrite(value, super.doubleDamageFrom, () {
      super.doubleDamageFrom = value;
    });
  }

  late final _$doubleDamageToAtom =
      Atom(name: 'PokeStoreBase.doubleDamageTo', context: context);

  @override
  List<dynamic> get doubleDamageTo {
    _$doubleDamageToAtom.reportRead();
    return super.doubleDamageTo;
  }

  @override
  set doubleDamageTo(List<dynamic> value) {
    _$doubleDamageToAtom.reportWrite(value, super.doubleDamageTo, () {
      super.doubleDamageTo = value;
    });
  }

  late final _$PokeStoreBaseActionController =
      ActionController(name: 'PokeStoreBase', context: context);

  @override
  void addPokemon(PokemonModel pokemon) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.addPokemon');
    try {
      return super.addPokemon(pokemon);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDoubleDamage(
      List<dynamic> doubleDamageFrom, List<dynamic> doubleDamageTo) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setDoubleDamage');
    try {
      return super.setDoubleDamage(doubleDamageFrom, doubleDamageTo);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPokemons(dynamic pokemons) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setPokemons');
    try {
      return super.setPokemons(pokemons);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearch(PokemonModel pokemon) {
    final _$actionInfo = _$PokeStoreBaseActionController.startAction(
        name: 'PokeStoreBase.setSearch');
    try {
      return super.setSearch(pokemon);
    } finally {
      _$PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons},
searchPokemon: ${searchPokemon},
doubleDamageFrom: ${doubleDamageFrom},
doubleDamageTo: ${doubleDamageTo}
    ''';
  }
}
