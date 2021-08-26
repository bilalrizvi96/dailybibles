import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        child:Column(
          children: [
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height / 20),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                      Icons.arrow_back, size: 30, color: Color(0xff5C5C78))
              ),
            ),
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height / 27),
            Text("Languages", style: TextStyle(fontSize: MediaQuery
                .of(context)
                .size
                .width / 11,
                fontWeight: FontWeight.bold,
                color: Color(0xff393133))),
            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height / 45),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 20),
                Radio(
                  value: 0,
                  groupValue: (){},
                  onChanged: (value) {

                  },
                ),

                SizedBox(width: MediaQuery.of(context).size.width / 30),
                Text( "English", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 16,fontWeight: FontWeight.w400, color: Color(0xff393133))
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 6),


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Divider( height: 1,),
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 20),
                Radio(
                  value: 1,
                  groupValue: (){},
                  onChanged: (value) {

                  },
                ),

                SizedBox(width: MediaQuery.of(context).size.width / 30),
                Text( "Chinese", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 16,fontWeight: FontWeight.w400, color: Color(0xff393133))
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 6),


              ],
            ),
          ],
        )
      )

    );
  }
}