import 'package:flutter/material.dart';
import 'package:food_delivery/Screen/StartScreen.dart';
 void main (){
   runApp(MyApp());

 }
 class MyApp extends StatelessWidget{

   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      title: "Food Delivery",

        home: StartScreen(),


    );
  }

 }