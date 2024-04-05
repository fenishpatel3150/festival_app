import 'package:festival_app/Screen/EditScreen/Editscreen.dart';
import 'package:festival_app/Screen/Home_screen/Homescreen.dart';
import 'package:festival_app/Screen/SecondScreen/Second_Screen.dart';
import 'package:festival_app/Screen/save/savescreen.dart';
import 'package:festival_app/Screen/share/sharescreen.dart';
import 'package:festival_app/utils/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        '/':(context)=>Homescreen(),
        '/second':(context)=>NavBar(),
        '/edit':(context)=>Editscreen(),
        '/share':(context)=>sharescreen(),
        '/save':(context)=>savescreen(),

      },
    );
  }
}
