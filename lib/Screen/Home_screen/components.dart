
import 'package:flutter/material.dart';

Widget  firstposter(double height, double width,String l2) {
  return Center(
    child: Padding(
      padding:  EdgeInsets.only(top: 20),
      child: Container(
        height: height/4,
        width: width/1.1,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(l2),fit: BoxFit.fill) ,
        ),
      ),
    ),
  );
}

Widget events_list(double height, double width, String i1) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height / 7,
        //width: width / 3.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(i1)),
        ),
      ),
    ),
  );
}

