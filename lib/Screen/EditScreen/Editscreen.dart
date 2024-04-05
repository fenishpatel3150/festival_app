import 'package:festival_app/utils/image/imagelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../SecondScreen/Second_Screen.dart';

class Editscreen extends StatefulWidget {
  const Editscreen({super.key});

  @override
  State<Editscreen> createState() => _EditscreenState();
}
TextEditingController text=TextEditingController();
class _EditscreenState extends State<Editscreen> {

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
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height/15,
                  width: width/3.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: ()
                    {
                      showModalBottomSheet(context: context, builder: (context)
                      {
                        return Container(
                          height: height/3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              controller: text,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintStyle: const TextStyle(color: Colors.white),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xfff7f8fd)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xfff7f8fd)),
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                              SizedBox(height: 40,),
                              Container(
                                height: height/15,
                                width: width/2.3,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                    onPressed: (){
                                      setState(() {

                                      });
                                    },
                                    child: Center(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 15),))),
                              )
                            ],
                          ),
                        );
                      }
                      );
                    },
                    child: Text('Text',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: height/15,
                  width: width/3.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:TextButton(
                      onPressed: ()
                      {
                        showModalBottomSheet(context: context, builder: (context)
                        {
                          return Container(
                            height: height/3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            alignment: Alignment.center,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(colorlist.length, (index) =>
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        textcolorindex =index;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 18.0),
                                      child: Container(
                                        height: height/10,
                                        width: width/4.5,
                                        decoration: BoxDecoration(
                                          color: colorlist[index],
                                          border: Border.all(color: Colors.white),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ),
                          );
                        }
                        );
                      },
                      child: Center(child: Text('Color',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300)))),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height/15,
                  width: width/3.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: ()
                    {
                      showModalBottomSheet(context: context, builder: (context)
                      {
                        return Container(
                          height: height/3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 60,top: 20),
                                    child: Text('Alignment',style: TextStyle(color: Colors.white),),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 70,top: 30),
                                    child: Container(
                                      height: height/25,
                                      width: width/8.3,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_drop_up_sharp,color: Colors.blueAccent,size: 30,),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left: 30,top: 10),
                                        child: Container(
                                          height: height/25,
                                          width: width/8.3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.arrow_left,color: Colors.blueAccent,size: 30,),
                                        ),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(left: 40,top: 10),
                                        child: Container(
                                          height: height/25,
                                          width: width/8.3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.arrow_right,color: Colors.blueAccent,size: 30,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 70,top: 10),
                                    child: Container(
                                      height: height/25,
                                      width: width/8.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_drop_down_outlined,color: Colors.blueAccent,size: 30,),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80,top: 20),
                                    child: Text('Text Size',style: TextStyle(color: Colors.white),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80,top: 30),
                                    child: Container(
                                      height: height/15,
                                      width: width/6.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.blueAccent)
                                      ),
                                      child: Center(child: Text('+',style: TextStyle(color: Colors.white,fontSize: 30),)),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      height: height/15,
                                      width: width/6.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.blueAccent)
                                      ),
                                      child: Center(child: Text('-',style: TextStyle(color: Colors.white,fontSize: 30),)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }
                      );
                    },
                    child: Text('Align',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: height/15,
                  width: width/3.2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:TextButton(
                      onPressed: ()
                      {

                        showModalBottomSheet(context: context, builder: (context)
                        {
                          return Container(
                            height: height/3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: List.generate(fontlist.length, (index) => TextButton(onPressed:()
                                  {
                                   setState(() {

                                     fontindex=index;
                                   });

                                  }, child: Text(fontlist[index]))),
                            ),
                          );
                        }
                        );
                      },
                      child: Center(child: Text('Font',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300)))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
int textcolorindex=0;
int fontindex=0;