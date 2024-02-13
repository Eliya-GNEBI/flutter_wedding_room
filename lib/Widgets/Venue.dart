import 'package:flutter/material.dart';
import 'package:my_app/Details/VenueDetail.dart';

import '../SelectVenue.dart';

class Venue extends StatefulWidget {
  final asset;
  final pageno;
  Venue(this.asset,this.pageno);
  @override
  _VenueState createState() => _VenueState();
}


class _VenueState extends State<Venue>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[200],
     body: CustomScrollView(
     scrollDirection: Axis.vertical,
     slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 180.0,
          leading: IconButton (onPressed: (){
           Navigator.of(context).pop(widget.pageno);

          },
             icon: Icon(Icons.arrow_back),),
              pinned: true,
              centerTitle: false,
              flexibleSpace: new FlexibleSpaceBar(
                title: Text(widget.asset['title'],textAlign: TextAlign.start,),
                background: Hero(
                tag: widget.asset['img'],

                  child: new Image.asset(widget.asset['img'],
                      fit: BoxFit.cover),
                ),
              ),
            ),

     SliverList(
  delegate: SliverChildBuilderDelegate(

       (context,index) => GestureDetector(
         onTap: (){
           Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SelectVenue(index)));
         },
         child: Hero(
           tag: VenueDetail.details[index],
           child: Container(
      child: Row(
            children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8,),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.white,
                          border: Border.all(color: Colors.grey),
                            boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(0.10, 10.60),
                              blurRadius:  25.0,
                            ),
                          ],
                      image: DecorationImage(image: AssetImage(VenueDetail.details[index]['img']),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),

                Expanded(flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container
                  (
                   height: 200,
                   width: 200,
                   decoration: BoxDecoration(color: Colors.white,
                            border: Border.all(color: Colors.grey),
                              boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey[300],
                                offset: Offset(0.10, 10.60),
                                blurRadius:  25.0,
                              ),
                            ],
                        ),
                   child: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Column
                     ( crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                       Text(VenueDetail.details[index]['name'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                        Padding(
                          padding: const EdgeInsets.only(top:10),
                          child: Container(
                          decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(10))
      ),
                             height: 22,
                            width: 55,
                            child: Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                child: Icon(Icons.star,color: Colors.white,size: 17,),
                              ),
                              Text(VenueDetail.details[index]['rating'],style: TextStyle(color: Colors.white,fontSize: 14),),
                            ],),
                          ),
                        ),
            Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text("32 Reviews",style: TextStyle(color: Colors.black,fontSize: 15),),
            ),
            Padding(
                  padding: const EdgeInsets.only(left: 0,top:6,bottom: 6),
                  child: Row(
                    children: <Widget>[
                        Icon(Icons.place,size:17,color: Colors.redAccent,),
                        Text(VenueDetail.details[index]['place'],style: TextStyle(color: Colors.black,fontSize: 17),)
                    ],
                  ),
            ),
           Divider(color: Colors.grey,),
           Padding(
             padding: const EdgeInsets.only(top:8.0),
             child: Row(
                   children: <Widget>[
                       Text(VenueDetail.details[index]['price'],style: TextStyle(color: Colors.redAccent,fontSize: 18,fontWeight: FontWeight.w600),),
                       Text(" /-  per day",style: TextStyle(color: Colors.redAccent,fontSize: 16,fontWeight: FontWeight.w300),),
                   ],
             ),
           )


                     ],),
                   ),

                  ),
                ),)
            ],
      ),
  ),
         ),
       ),
    childCount: VenueDetail.details.length

    ),
    ) ],
   ),
      );
  }
}