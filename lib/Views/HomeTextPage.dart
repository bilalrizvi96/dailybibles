import 'package:flutter/material.dart';

class HomeTextPage extends StatelessWidget {
  const HomeTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 10, top: 300),
            child: Text(
              "Write anything that's on your mind: ",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 10,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1.15,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0, color: Colors.black12),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffffe5b4),
                    spreadRadius: 0,
                    blurRadius: 8,
                  )
                ]),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width / 15),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: 'Write here...'),
            ),
          ),
        ],
      ),
    ));
  }
}
