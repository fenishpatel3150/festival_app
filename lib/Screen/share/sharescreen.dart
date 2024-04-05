import 'package:festival_app/utils/image/imagelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

import '../EditScreen/Editscreen.dart';
import '../SecondScreen/Second_Screen.dart';

class sharescreen extends StatefulWidget {
  const sharescreen({super.key});

  @override
  State<sharescreen> createState() => _sharescreenState();
}
class _sharescreenState extends State<sharescreen> {
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
            RepaintBoundary(
              key: imgKey,
              child: Container(
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
                        {
                          ShareFilesAndScreenshotWidgets().shareScreenshot(
                              imgKey,500,
                              "Post",
                              "Festival Post.png",
                              "image/png");
                        },
                        child: Text('Share',style: TextStyle(color: Colors.white,fontSize: 20),))),
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

GlobalKey imgKey = GlobalKey();
