
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    leading: IconButton(
      icon: Icon(Icons.arrow_back,color: Colors.white,),
      onPressed: ()
      {
        Navigator.pop(context);
      },
    ),
    title: Text(
      'Edit',
      style: TextStyle(color: Colors.lightBlue, fontSize: 25),
    ),
  );
}