import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:festival_app/Screen/EditScreen/Editscreen.dart';
import 'package:festival_app/Screen/SecondScreen/Second_Screen.dart';
import 'package:festival_app/Screen/share/sharescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

import '../../utils/image/imagelist.dart';

class savescreen extends StatefulWidget {
  const savescreen({super.key});

  @override
  State<savescreen> createState() => _savescreenState();
}

class _savescreenState extends State<savescreen> {
  Uint8List? imgdata;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:  height/2,
              width: width/1,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: [
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(img[imgindex]['image6'][edit],fit: BoxFit.cover,)),
                  Text(text.text,style: TextStyle(color: colorlist[textcolorindex]),)
                ],
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: height/15,
                    width: width/3.2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: TextButton(
                        onPressed: ()
                       async {
                          RenderRepaintBoundary? boundry = imgKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                          ui.Image image = await boundry.toImage();
                          ByteData? bytedata = await image.toByteData(format : ui.ImageByteFormat.png);
                          imgdata = bytedata!.buffer.asUint8List();
                          ImageGallerySaver.saveImage(imgdata!,name: "poster", quality: 100);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Save")));
                        },
                        child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20),))),
                  ),
                ),
                SizedBox(width: 20,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
