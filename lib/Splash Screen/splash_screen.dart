import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isFirstTime;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          Container(
              // padding: EdgeInsets.only(top: 300),
              child: Icon(
            Icons.list,
            size: 200,
          )),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "Hello to Todolist",
                style: TextStyle(fontFamily: 'Berkie', fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tap on the Icon at the top to save/load your tasks",
                style: TextStyle(fontSize: 20, fontFamily: 'Berkie'),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tap and hold on a task to delete the task",
                style: TextStyle(fontSize: 20, fontFamily: 'Berkie'),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
              color: Colors.white60,
              child: Text(
                "Enter",
                style: TextStyle(fontFamily: 'Berkie', fontSize: 20),
              ),
              onPressed: () {
                
                
                Navigator.pushNamed(context, '/app');
              },
            ),
          )
        ],
      ),
    );
  }
}
