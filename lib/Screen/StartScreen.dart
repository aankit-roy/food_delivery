 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Screen/HomeScreen.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return  Scaffold(
       body: Container(
         decoration: const BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/images/one.jpg"),
             fit:BoxFit.cover,
           ),
         ),
         child: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.bottomCenter,
               colors: [
                 Colors.black.withOpacity(.9),
                 Colors.black.withOpacity(.8),
                 Colors.black.withOpacity(.3),



               ]
             )
           ),
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Taking Order For Delivery",
                 style: TextStyle(fontSize: 50,
                 fontWeight: FontWeight.bold,
                   color: Colors.white
                 ),),
                 SizedBox(
                   height: 20,
                 ),
                 Text("See Resturants nearby by \nadding locations",
                   style: TextStyle(fontSize: 18,
                   color: Colors.white,
                     height: 1.4,

                   ),
                 ),
                 SizedBox(
                   height: 100,
                 ),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular( 10),
                     gradient: LinearGradient(
                       colors: [
                         Colors.yellow,
                         Colors.orange,
                       ]
                     )
                   ),
                   child: MaterialButton(
                      minWidth: double.infinity,
                     child: Text("Start",style: TextStyle(color: Colors.white),),
                     onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                        (context) =>HomeScreen(),

                        ));
                     },

                   ),
                 ),
                 SizedBox(height: 30,),
                 Align(
                   child: Text("How Deliver To Your Door 24/7",style: TextStyle(

                     color: Colors.white70,
                     fontSize: 15

                   ),),
                 ),
                 SizedBox(height: 30,),



               ],
             ),
           ),
         ),

       ),

     );
  }
}