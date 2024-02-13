import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:my_app/Login.dart';
import 'package:my_app/ListVenue.dart';
import 'package:my_app/SelectVenue.dart';
import 'Widgets/Animatedlogo.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.purple),
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 100.0).animate(controller);

    controller.forward();
    if ( context != null && mounted) {
      Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => ListVenue(),
        ),
      ));
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
          Container(
            decoration: BoxDecoration(
          color: Colors.purpleAccent,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.55, 0.3, 0.5, 0.7, 0.8, 0.9],
            colors: [
              Colors.purple[700],
              Colors.purple[600],
              Colors.purple[500],
              Colors.purple[400],
              Colors.purple[300],
              Colors.purple[200],
            ],
          ),
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Animatedlogo(animation: animation),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Bienvenue sur\nWedding Room",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Text("C'est parti...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
