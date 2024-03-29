import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/Details/VenueDetail.dart';
import 'package:my_app/FixedBar.dart';
import 'package:my_app/ListVenue.dart';
import 'package:my_app/Sheet.dart';
import 'package:my_app/Signup.dart';
// import 'Login.dart';


class SelectVenue extends StatefulWidget {
  final index;
  SelectVenue(this.index){print(index);}
  @override
  _SelectVenueState createState() => _SelectVenueState();
}

class _SelectVenueState extends State<SelectVenue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purpleAccent,
          onPressed: () {
            showModalBottomSheet(context: context,builder: (context){
              return Sheet();
            });
          },
          child: Icon(Icons.keyboard_arrow_up,color: Colors.deepPurple,size: 50,),
        ),
        bottomNavigationBar: FixedBar(1),
        body: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
             SliverAppBar(
                expandedHeight: 180.0,
                leading: IconButton (onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder:
                          (BuildContext context) => ListVenue()));},
                   icon: Icon(Icons.arrow_back),),
                    pinned: true,
                    centerTitle: false,
                    flexibleSpace: new FlexibleSpaceBar(
                      // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
                      background:
                      Hero(
                        tag: VenueDetail.details[widget.index],
                        child: Container(
                          child: Image.asset(VenueDetail.details[widget.index]['img'],
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
          SliverList(
          delegate: SliverChildBuilderDelegate((context,index) =>
              Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 210,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(VenueDetail.details[widget.index]['name'],
                        style: TextStyle(fontSize: 22,),),
                    ),
                    Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:5,right:5),
                        child: Icon(Icons.place,size:20),
                      ),
                    Text(VenueDetail.details[widget.index]['place'],
                      style: TextStyle(fontSize:16),),
                    Padding(
                        padding: const EdgeInsets.only(left:5,right:5),
                      child: InkWell(onTap: (){},
                        child: Text("",style: TextStyle(fontSize:16))),
                    ),],),

                    Row(
                      children: <Widget>[
                        Expanded( flex: 1, child: Padding(
                          padding: const EdgeInsets.only(top:15,right: 20,left: 20),
                          child: Container(
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(onPressed: (){
                                Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder:
                                (BuildContext context) => Signup()));},
                                  icon: Icon(Icons.add,
                                    color:Colors.purpleAccent,size: 25,),),
                              Padding(
                                padding: const EdgeInsets.only(right:5),
                                child: Text("Réserver",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
                              )
                            ],),
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white,
                          border: Border.all(color:Colors.purpleAccent)
                          ),),
                        )),

                       Expanded( flex: 1, child: Padding(
                          padding: const EdgeInsets.only(top:10,right: 20,left: 20),
                          child: Container(
                            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.call,color: Colors.white,size: 25,),
                              Padding(
                                padding: const EdgeInsets.only(right:25,left: 10),
                                child: Text("Nous contacter",style: TextStyle(color: Colors.white,fontSize: 20,),),
                              )
                            ],),
                          height: 50,
                          decoration: BoxDecoration(color: Colors.green,
                          border: Border.all(color:Colors.green)
                          ),),
                        )),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                    Padding(
                                    padding: const EdgeInsets.only(bottom:5),
                                      child: Container(decoration:
                                      BoxDecoration(color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                        height: 22,
                                        width: 55,
                                        child: Row(children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                            child: Icon(Icons.star,color: Colors.white,size: 17,),
                                          ),
                                          Text(VenueDetail.details[widget.index]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
                                        ],),
                                      ),
                                    ),
                                  Text("Note")
                                ],
                              ),
                               Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:2),
                                    child: Icon(FontAwesomeIcons.heart),
                                  ),
                                            Text("Favoris")
                                ],
                              ),
                               Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:2),
                                    child: Icon(Icons.share),
                                  ),
                                  Text("Partager")
                                ],
                              ),
                            ],
                          ),
                      )
                            ],
                            ),

                          ),
                        )  ,
              ],
            ),
              childCount:1,
            )
            )
          ]
        )
    );
  }
}