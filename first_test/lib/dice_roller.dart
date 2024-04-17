import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var curr = 6;

  void rollDice(){
    setState((){
      curr = randomizer.nextInt(6)+1;
      }
    );
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/Dice$curr.png'),
            TextButton(onPressed: rollDice ,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top:30
                ),
              foregroundColor: Colors.pink, 
              textStyle: 
              const TextStyle(fontSize:50)
              ),
            child: const Text('翻牌子'))
      ],
    );
  }
}