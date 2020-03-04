import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/calls_screen.dart';
import './screens/camera_screen.dart';
import './screens/chat_screen.dart';
import './screens/status_screen.dart';

void main()=>runApp(
  MaterialApp(
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
     primaryColor: Color(0xff075e54),
     accentColor: Color(0xff250366)
   ),
    home:homepage(),
    title: "what's App",
  )
);

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:homeone(),


    );
  }

}