import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsCardBorderWidget extends StatelessWidget {

  Widget inside;
  bool infinity;

  StatsCardBorderWidget({required this.inside, required this.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: infinity ? double.infinity : 155,
      constraints: const BoxConstraints(
        minHeight: 60
      ),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey.shade100
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: inside,
    );
  }
}
