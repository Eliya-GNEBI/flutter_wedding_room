import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/Details/VenueDetail.dart';
import 'package:my_app/FixedBar.dart';
import 'package:my_app/SelectVenue.dart';
import 'Login.dart';


void main() => runApp(MaterialApp(
  home: ListVenue(),
));

class ListVenue extends StatefulWidget {
  @override
  _ListVenueState createState() => _ListVenueState();
}

class _ListVenueState extends State<ListVenue> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          // expandedHeight: 180.0,
          leading: IconButton(onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder:
                    (BuildContext context) => Login()));},
            icon: Icon(Icons.arrow_back),),
          centerTitle: false,

          backgroundColor : Colors.purple[300],),
       //bottomNavigationBar: FixedBar(),

        body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            pinned: false,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
              background:
              Hero(
                tag: VenueDetail.details[1],
                child: Container(
                  child: Image.asset(VenueDetail.details[1]['img'],
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
                              child: Text(VenueDetail.details[1]['name'],
                                style: TextStyle(fontSize: 22,),),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5,right:5),
                                child: Icon(Icons.place,size:20),
                              ),
                              Text(VenueDetail.details[1]['place'],
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
                                        IconButton (onPressed: (){
                                            Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(builder:
                                            (BuildContext context) => SelectVenue(1)));},
                                              icon: Icon(Icons.list_rounded,
                                                    color:Colors.purpleAccent,size: 25,),),
                                        Padding(
                                          padding: const EdgeInsets.only(right:5),
                                          child: Text("Plus d'infos",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
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
                                          child: Text("Contacter",style: TextStyle(color: Colors.white,fontSize: 20,),),
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
                                            Text(VenueDetail.details[1]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
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
          ),


          SliverAppBar(
            expandedHeight: 180.0,
            pinned: false,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
              background:
              Hero(
                tag: VenueDetail.details[2],
                child: Container(
                  child: Image.asset(VenueDetail.details[2]['img'],
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
                              child: Text(VenueDetail.details[2]['name'],
                                style: TextStyle(fontSize: 22,),),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5,right:5),
                                child: Icon(Icons.place,size:20),
                              ),
                              Text(VenueDetail.details[2]['place'],
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
                                        IconButton (onPressed: (){
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) => SelectVenue(2)));},
                                          icon: Icon(Icons.list_rounded,
                                            color:Colors.purpleAccent,size: 25,),),
                                        Padding(
                                          padding: const EdgeInsets.only(right:5),
                                          child: Text("Plus d'infos",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
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
                                          child: Text("Contacter",style: TextStyle(color: Colors.white,fontSize: 20,),),
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
                                            Text(VenueDetail.details[2]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
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
          ),


          SliverAppBar(
            expandedHeight: 180.0,
            pinned: false,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
              background:
              Hero(
                tag: VenueDetail.details[3],
                child: Container(
                  child: Image.asset(VenueDetail.details[3]['img'],
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
                              child: Text(VenueDetail.details[3]['name'],
                                style: TextStyle(fontSize: 22,),),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5,right:5),
                                child: Icon(Icons.place,size:20),
                              ),
                              Text(VenueDetail.details[3]['place'],
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
                                        IconButton (onPressed: (){
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) => SelectVenue(3)));},
                                          icon: Icon(Icons.list_rounded,
                                            color:Colors.purpleAccent,size: 25,),),
                                        Padding(
                                          padding: const EdgeInsets.only(right:5),
                                          child: Text("Plus d'infos",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
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
                                          child: Text("Contacter",style: TextStyle(color: Colors.white,fontSize: 20,),),
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
                                            Text(VenueDetail.details[3]['rating'],
                                              style: TextStyle(color: Colors.white,
                                                  fontSize: 14),),
                                          ],
                                          ),
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
          ),


          SliverAppBar(
            expandedHeight: 180.0,
            //pinned: false,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
              background:
              Hero(
                tag: VenueDetail.details[4],
                child: Container(
                  child: Image.asset(VenueDetail.details[4]['img'],
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
                              child: Text(VenueDetail.details[4]['name'],
                                style: TextStyle(fontSize: 22,),),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5,right:5),
                                child: Icon(Icons.place,size:20),
                              ),
                              Text(VenueDetail.details[4]['place'],
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
                                        IconButton (onPressed: (){
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) => SelectVenue(4)));},
                                          icon: Icon(Icons.list_rounded,
                                            color:Colors.purpleAccent,size: 25,),),
                                        Padding(
                                          padding: const EdgeInsets.only(right:5),
                                          child: Text("Plus d'infos",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
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
                                          child: Text("Contacter",style: TextStyle(color: Colors.white,fontSize: 20,),),
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
                                            Text(VenueDetail.details[4]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
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
          ),

          SliverAppBar(
            expandedHeight: 180.0,
            pinned: false,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              // title: Text(VenueDetail.details[widget.index]['name'],textAlign: TextAlign.start,),
              background:
              Hero(
                tag: VenueDetail.details[5],
                child: Container(
                  child: Image.asset(VenueDetail.details[5]['img'],
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
                              child: Text(VenueDetail.details[5]['name'],
                                style: TextStyle(fontSize: 22,),),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5,right:5),
                                child: Icon(Icons.place,size:20),
                              ),
                              Text(VenueDetail.details[5]['place'],
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
                                        IconButton (onPressed: (){
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) => SelectVenue(5)));},
                                          icon: Icon(Icons.list_rounded,
                                            color:Colors.purpleAccent,size: 25,),),
                                        Padding(
                                          padding: const EdgeInsets.only(right:5),
                                          child: Text("Plus d'infos",style: TextStyle(color: Colors.purpleAccent,fontSize: 20,),),
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
                                          child: Text("Contacter",
                                            style: TextStyle(color: Colors.white,
                                              fontSize: 20,),),
                                        )
                                      ],
                                    ),
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
                                            Text(VenueDetail.details[5]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
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