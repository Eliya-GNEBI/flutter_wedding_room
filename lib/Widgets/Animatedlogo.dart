import 'package:flutter/material.dart';
//import 'package:flutter/animation.dart';

class Animatedlogo extends AnimatedWidget{
    Animatedlogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  Widget build(BuildContext context){
  final animation = listenable as Animation<double>;
return 
Icon(Icons.door_sliding_outlined,size:animation.value,color: Colors.white);
  }
}