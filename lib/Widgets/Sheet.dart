import 'package:flutter/material.dart';


class Sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:15,bottom: 15),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Détails de la salle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              //Text("Done",style: TextStyle(fontSize: 20,color: Colors.purpleAccent,fontWeight: FontWeight.w500))
            ],
          ),
        ),
Divider(color: Colors.purpleAccent,),

Text("Photo + Video Package",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
Padding(
  padding: const EdgeInsets.only(bottom:8,top:8.0),
  child:   Text("Localisation",style:TextStyle(fontSize: 16,color: Colors.purpleAccent)),
),
Divider(color: Colors.grey,),
Padding(
  padding: const EdgeInsets.only(top:8),
  child:   Text("Dates disponibles",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
),
Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Text("Contenance de la salle"),
),
Text("180 personnes",style: TextStyle(color:Colors.grey,)),
Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Text("Services offerts"),
),
Text("Sonorisation + Décoration",style: TextStyle(color:Colors.grey,)),
Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Text("Description de la salle "),
),
Text("Salle très conviviale, moderne et entièrement équipée",style: TextStyle(color:Colors.grey,)),
Padding(
  padding: const EdgeInsets.only(top:20.0),
  child:   Text("Candid Photography"),
),
Text("18,000 /- per day",style: TextStyle(color:Colors.grey,)),

      ],),
    ),
    );
  }
}