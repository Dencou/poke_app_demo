import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCardBorderWidget extends StatelessWidget {

  Widget inside;

  StatsCardBorderWidget({required this.inside});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:155,
      constraints: BoxConstraints(
        minHeight: 60
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(8),
        ),
      ),
      child: inside,

    );
  }
}