import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

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
                Text("Info", style: TextStyle(fontSize: MediaQuery
                    .of(context)
                    .size
                    .width / 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff393133))),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 30),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 15),
                    Text( "Terms and Condition", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 16,fontWeight: FontWeight.w400, color: Color(0xff393133))
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,bottom:20),
                  child: Divider( height: 1,),
                ),
                Row(
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width / 15),
                    Text( "Acknowlegdement", style: TextStyle(fontSize: MediaQuery.of(context).size.width / 16,fontWeight: FontWeight.w400, color: Color(0xff393133))
                    ),


                  ],
                ),
              ],
            )
        )

    );;
  }
}
