import 'dart:ui';

import 'package:flutter/material.dart';

class PokemonModel {
  int id;
  String name;
  int attack;
  int defense;
  int hp;
  String type;
  String sprite_front;
  String colorType;

  PokemonModel(
      this.id,
      this.name,
      this.attack,
      this.defense,
      this.hp,
      this.sprite_front,
      this.type,
      this.colorType,
    );

  Map<String, dynamic> toDynamic() {
    return {
      "id": id,
      "name": name,
      "attack": attack,
      "defense": defense,
      "hp": hp,
      "sprite_front": sprite_front,
      "type": type,
      "colorType": colorType,
    };
  }

  Color getColor(){
    return Colors.red;
  }

  static fromMap(e) {
    return PokemonModel(
        e["id"],
        e["name"],
        e["attack"],
        e["defense"],
        e["hp"],
        e["sprite_front"],
        e["type"],
        e["colorType"]
    );
  }

}