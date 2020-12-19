import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ToDoIst/providerTaskList.dart';

class SwipeUpBottomSheet extends StatelessWidget {
  // final Function onPressedCallBack;

  // SwipeUpBottomSheet({this.onPressedCallBack});

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "ADD TASK",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) => text = value,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () {
                  Provider.of<MyTaskListProvider>(context, listen: false).addTasksInto(text);
                  Navigator.pop(context);
                },
                child: Text(
                  "ADD",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
      ),
    );
  }
}
