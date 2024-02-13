import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ListVenue.dart';
// import 'package:my_app/Home.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'Widgets/RotatedLogo.dart';
import 'Signup.dart';
// import 'Head.dart';

void main() => runApp(MaterialApp(
    home:  Login(),  
));


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> with SingleTickerProviderStateMixin {

 // final email = TextEditingController();
 // final password = TextEditingController();

// static var title = "Login";

 bool _hidden =true;
 void _toggle ()
 {
   setState(() {
     _hidden = !_hidden;
   });
 }
  Animation<double> animation;            
  AnimationController controller; 
  @override
  void initState() {
    super.initState();
      controller =AnimationController(duration: const Duration(seconds: 18), vsync: this);            
  animation = Tween<double>(begin: 0.0, end: 15.0).animate(controller);      
   controller.forward(); 
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.repeat();
    //   }
    // });
      }       
@override
void dispose() {            
controller.dispose();            
super.dispose();            
 }
 
 
  @override
  Widget build(BuildContext context) {
        timeDilation=3;
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body:   Container(
            child: Column(children: <Widget>[
               Container(
                    alignment: Alignment.topCenter,
                    height: 300,
                    width: 450,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                          Colors.purple[900],
                          Colors.purple[500],
                          Colors.purple[200]
                        ],
                      ),
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Hero(tag:'logo', child: RotatedLogo(animation: animation)),                              
                           Padding(
                               padding: const EdgeInsets.only(top:28.0),
                               child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Container(
                                       alignment: Alignment.center,
                                       decoration: BoxDecoration(color: Colors.white ,
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
                                       child: Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: Text("Connexion",style: TextStyle(color: Colors.purpleAccent,fontSize: 25,),textAlign: TextAlign.end),
                                       )),
                                 ],
                               ),
                           )
    ],),) ),
    
    // Head(),
              SizedBox(height: 30,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                   child: Padding(
                     padding: const EdgeInsets.only(top:20),
                     child: Container(
                       child: Form(
                         autovalidateMode: AutovalidateMode.always,
                         child: ListView(
                             children: <Widget>[
                               Padding(
                                 padding:const EdgeInsets.only(right: 20,left: 20),
                                 child: TextFormField(
                                  // controller: email,
                                   textAlign: TextAlign.left,
                                   decoration: InputDecoration(
                                     prefixIcon: Icon(Icons.email),
                                     labelText: ' Email',
                                      filled: true,
                                      border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(Radius.elliptical(30, 30)),
                                                gapPadding: 10.0,
                                              ),
                                              ),
                                 ),
                               ),

                               SizedBox(height: 30,),
                               Padding(
                                 padding: const EdgeInsets.only(right: 20,left: 20),
                                 child: TextFormField(
                                 //  controller: password,
                                  textAlign: TextAlign.left,
                                   decoration: InputDecoration(
                                     prefixIcon:Icon(Icons.security),
                                     suffixIcon: (_hidden) ? IconButton(icon:Icon(Icons.visibility_off),
                                     onPressed:() { _toggle(); },
                                     )
                                     :
                                     IconButton(icon:Icon(Icons.visibility),
                                     onPressed:() { _toggle(); },
                                     ) ,

                                     labelText: ' Mot de Passe',
                                      filled: true,
                                      errorStyle: TextStyle(color: Colors.purple),
                                      border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(Radius.elliptical(30, 30)),
                                                 gapPadding: 10.0,
                                              ),
                                              ),
                         obscureText: (_hidden) ? true: false,
                                 ),
                               ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35,bottom: 10,left: 100,right: 100),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ListVenue()));
                                 // getCredential();
                                },
                                child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                        gradient: LinearGradient(
                                        colors: <Color>[
                                          Colors.purple[200],
                                          Colors.purple[500],
                                          Colors.purple[800],
                                        ],
                                      ),
                                    ),
                                    padding:EdgeInsets.all(10.0),
                                    child: Center(
                                        child: Text('Se connecter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400, color: Colors.white)
                                        ),
                                    ),
                                  ),
                              ),
                            ),
                            InkWell(child: Text("Mot de Passe oublié ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.purpleAccent),
                            ),
                            onTap: (){},
                            ),
                          Padding(
                              padding: const EdgeInsets.only(left:25.0,right:25.0,top:35.0,bottom:35.0),
                              child:   Row(children: <Widget>[
                               Expanded(child: Divider(color: Colors.purpleAccent,)),
                                Text(" OU ",style: TextStyle(color: Colors.purpleAccent,fontSize: 15)),
                                Expanded(child: Divider(color: Colors.purpleAccent,))]),
                          ),
                          InkWell(child: Text("Créer un compte",textAlign: TextAlign.center,style: TextStyle(color: Colors.purpleAccent,fontSize: 20)),
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Signup()));},
                          ),
                          SizedBox(height: 50,),

               ],
           ),
         ),
       ),
     ),
    ),
  ),
),

          ],
          ),
        ),

    );
}


 // getCredential() async {
 //SharedPreferences prefs = await SharedPreferences.getInstance();
  // var correctpass=prefs.getString(email.text);
  // if(correctpass == password.text)
  //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Home()));

  //else
    //showDialog(context:context,builder:(BuildContext context)=>AlertDialog(title: Text("Error:"), content: Text("Invalid Email or Password",style: TextStyle(fontSize: 20,),),));
  } 

//}
