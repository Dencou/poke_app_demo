// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save-pokemons.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SavePokemons on SavePokemonsBase, Store {
  late final _$savedPokemonsAtom =
      Atom(name: 'SavePokemonsBase.savedPokemons', context: context);

  @override
  List<SaveModel> get savedPokemons {
    _$savedPokemonsAtom.reportRead();
    return super.savedPokemons;
  }

  @override
  set savedPokemons(List<SaveModel> value) {
    _$savedPokemonsAtom.reportWrite(value, super.savedPokemons, () {
      super.savedPokemons = value;
    });
  }

  late final _$SavePokemonsBaseActionController =
      ActionController(name: 'SavePokemonsBase', context: context);

  @override
  void savePokemons(SaveModel savedPokemon) {
    final _$actionInfo = _$SavePokemonsBaseActionController.startAction(
        name: 'SavePokemonsBase.savePokemons');
    try {
      return super.savePokemons(savedPokemon);
    } finally {
      _$SavePokemonsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSavedPokemons(dynamic savedPokemons) {
    final _$actionInfo = _$SavePokemonsBaseActionController.startAction(
        name: 'SavePokemonsBase.setSavedPokemons');
    try {
      return super.setSavedPokemons(savedPokemons);
    } finally {
      _$SavePokemonsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
savedPokemons: ${savedPokemons}
    ''';
  }
}
