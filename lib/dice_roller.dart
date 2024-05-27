import 'dart:math';

import 'package:flutter/material.dart';

final randomizer=Random();
//Out such that called ones only once.

class  DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

@override
  State<DiceRoller> createState(){
  return _DiceRollerState();
}
}

class _DiceRollerState extends State<DiceRoller>{

  var activeImg='assets/images/dice-2.png';
  void rollDice(){
    var num=randomizer.nextInt(6)+1;
    activeImg='assets/images/dice-$num.png';

    setState(() {
    });
    print(num);
  }


  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      //takes up minimum space and centers the column
      children: [
        Image.asset(activeImg,width:200),

        const SizedBox(height: 20,),

        TextButton(onPressed: (){
          //takes function as value
          rollDice();
        },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8.0),
              foregroundColor: Colors.white,
              //Text color
              textStyle: const TextStyle(
                fontSize: 28,
              ),

            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}