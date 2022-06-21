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
  int colorType;

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
// no se me ocurrio otra cosa jaja
  Color getColor(){
    if(type == "fire"){
      return Colors.red;
    }else if(type == "water"){
      return Colors.blue;
    }else if(type == "grass"){
      return Colors.green;
    }else if(type == "fairy"){
      return Colors.purpleAccent;
    }else if(type == "electric"){
      return Colors.yellow;
    }else if(type == "psychic"){
      return Colors.deepPurpleAccent;
    }else if(type == "rock"){
      return Colors.brown;
    }else if(type == "ground"){
      return Colors.brown;
    }else if(type == "bug"){
      return Colors.lightGreen;
    } else if(type == "flying"){
      return Colors.lightBlue;
    }else if(type == "normal"){
      return Colors.grey;
    }else if(type == "poison"){
      return Colors.deepPurple;
    }
    else{
      return Colors.black;
    }
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