import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

int? integer;
Alignment? alg;
const startAlign=Alignment.centerLeft;
const endAlign=Alignment.topRight;

//const helps in internal performance optimization


class GradientContainer extends StatelessWidget{
  //extending stateless widget adds a lot of data and logic to our class that we are creating of our own.
  Color color1;
  Color color2;

  GradientContainer(this.color1,this.color2,{super.key}){
    //initialization work
  }
  @override
  //override is not required much but just means that you are over writing a method which is required by the stateless widget class.

  Widget build(context){
    return Container(
      decoration: BoxDecoration(

          gradient: LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin:  startAlign,
              end: endAlign,

          )
      ),
      child:  Center(
        child:Image.asset('assets/images/dice-2.pg',width:200)
      ),
    );
  }

//Build is the method inside the class, basically a function inside class called method
//But it should return a widget so we write Widget keyword before build method keyword.
//context is argument inside build,context is metadata object which contains info about this widget in the  widget tree.
// return gives flutter the access to use the widget u are mal=king
//Named parameters are added this way {} inside curly braces
// super refers to the parent class

}