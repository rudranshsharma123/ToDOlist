import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  TileList({
    this.boolCheckCallback,
    this.check,
    this.title,
    this.deleteCallBack
  }); //this.title});
  final String title;
  final bool check;
  final Function boolCheckCallback, deleteCallBack;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Material(
        color: Colors.black,
        elevation: 10,
        child: ListTile(
          onLongPress: deleteCallBack,
          trailing: Checkbox(value: check, onChanged: boolCheckCallback),
          title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: check ? TextDecoration.lineThrough : null),
              )),
        ),
      ),
    );
  }
}
