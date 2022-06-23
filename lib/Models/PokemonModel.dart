import 'dart:ui';

import 'package:flutter/material.dart';

class PokemonModel {
  int id;
  String name;
  int attack;
  int defense;
  int hp;
  String type;
  String typeUrl;
  List abilities;
  String sprite_front;
  String sprite_back;
  int colorType;

  PokemonModel(
      this.id,
      this.name,
      this.attack,
      this.defense,
      this.hp,
      this.sprite_front,
      this.sprite_back,
      this.type,
      this.typeUrl,
      this.abilities,
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
      "sprite_back":sprite_back,
      "type": type,
      "typeUrl":typeUrl,
      "abilities":abilities,
      "colorType": colorType,
    };
  }

// no se me ocurrio otra cosa jaja
  Color getColor(){
    if(type == "fire"){
      return Colors.red.shade400;
    }else if(type == "water"){
      return Colors.blue;
    }else if(type == "grass"){
      return Colors.green.shade400;
    }else if(type == "fairy"){
      return Colors.purpleAccent;
    }else if(type == "electric"){
      return Colors.yellow.shade400;
    }else if(type == "psychic"){
      return Colors.deepPurpleAccent;
    }else if(type == "rock"){
      return Colors.brown.shade400;
    }else if(type == "ground"){
      return Colors.brown.shade400;
    }else if(type == "bug"){
      return Colors.lightGreen.shade400;
    } else if(type == "flying"){
      return Colors.lightBlue.shade400;
    }else if(type == "normal"){
      return Colors.grey.shade500;
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
        e["sprite_back"],
        e["type"],
        e["typeUrl"],
        e["abilities"],
        e["colorType"]
    );
  }
}