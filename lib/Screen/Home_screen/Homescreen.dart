
import 'package:festival_app/Screen/Home_screen/components.dart';
import 'package:festival_app/Screen/SecondScreen/Second_Screen.dart';
import 'package:festival_app/utils/image/imagelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'READY TO POST',
          style: TextStyle(color: Colors.lightBlue, fontSize: 25),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          firstposter(height, width,iamge2[0]['image']),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Upcoming Events',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 120),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        tab = !tab;
                      });
                    },
                    icon: (tab)
                        ? Icon(
                      Icons.list,
                      color: Colors.white,
                    )
                        : Icon(
                      Icons.grid_on,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          if (tab) Expanded(
            child: GridView.builder(
                itemCount: 15,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10, crossAxisCount: 3),
                itemBuilder: (context, index) => InkWell(
                    onTap: (){
                        Navigator.of(context).pushNamed('/second');
                        imgindex=index;
                    },
                    child: events_list(height, width, img[index]['image']))),
          ) else Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, index) => event2(height, width,img[index]['image'],index),),),

        ],
      ),
    );
  }
  Widget event2(double height, double width, String i2,int index)
  {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: height/6.8,
                width: width/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 25),
                child: Text(img[index]['name'],style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22)),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 45,left: 25),
                child: Text(img[index]['temp'],style: TextStyle(color: Colors.white,fontSize: 10),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 75,left: 25),
                child: Container(
                  height: height/20,
                  width: width/2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent,width: 1.2)
                  ),
                  child: Center(
                    child:  InkWell(
                        onTap: ()
                        {
                          Navigator.of(context).pushNamed('/second');
                          imgindex=index;
                        },
                        child: Text('Edit Template',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 250,top: 8),
                child: Container(
                  height: height/8,
                  width: width/3.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(i2))
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}




bool tab = true;
