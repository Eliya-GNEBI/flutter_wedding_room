import 'package:flutter/material.dart';



class FixedBar extends StatelessWidget {
  final index;
  FixedBar(this.index);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar( 
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[

   Padding(
     padding: const EdgeInsets.only(top:10,right:60),
     child: Row(
       children: <Widget>[
             // Icon(Icons.mail,color: Colors.redAccent,size: 30,),
              Padding(
                padding: const EdgeInsets.only(left:15,right:15),
                //child: Icon(Icons.call,color: Colors.green,size:30),
              )

            ],),
   ),

      ],
    ),
      );
  }
}