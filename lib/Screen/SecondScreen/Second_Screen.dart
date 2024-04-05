import 'package:festival_app/Screen/SecondScreen/Componets.dart';
import 'package:festival_app/utils/image/imagelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.black,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:  height/2,
            width: width/1,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Image.asset(img[imgindex]['image6'][edit],fit: BoxFit.cover,),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(img[imgindex]['image6'].length, (index) => inkwell(height, width, index)),
              ],
            ),
          )
        ],
      ),
    );

  }
  Widget  inkwell(double height, double width,int index) {
    return InkWell(
      onTap: ()
      {
        setState(() {
          edit=index;
        });
      },
      child: Container(
          height: height / 7,
          width: width / 3.1,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(img[imgindex]['image6'][index]),fit: BoxFit.fill)
          ),
      ),
    );
  }
}

int imgindex=0;
int edit=0;
