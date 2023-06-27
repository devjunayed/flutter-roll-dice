import 'package:flutter/material.dart';
import 'package:not_first_app/styled_text.dart';
import 'package:not_first_app/dice_roller.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key, required this.color});
  final List<Color> color;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:  DiceRoller(),
      ),
    );
  }
}
