import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main(){//Defining the function
//need not be called,entry point of app,automatically executes
  runApp( MaterialApp(
    home: Scaffold(

     // backgroundColor: Color.fromARGB(100, 100, 220, 224),
      
      body: GradientContainer()
    ),
    //const is added to help Dart optimize the runtime performance
    //when const is added to a widget it is only added to the memory ones and second time memory is reused
    //avoids duplication of data in memory
  ));//Calling a function provided by function
  //runApp requires input to be shown on the screen
  //it requires widget tree value

  //DART IS A TYPE SAFE LANGUAGE--all values are of certain Types
  //made in dart to ensure we do ont use incorrect types

  //Container can't be added const
  //List is created as []
}

