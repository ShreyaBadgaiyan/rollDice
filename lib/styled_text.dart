import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{

  final String text;
  
  const StyledText( this.text,{super.key});
  //this is how we put positional argument in constructor.
  //while in the  other way using required we put named arguments.

  @override
Widget build(context){
    return  Center(
      child: Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

}