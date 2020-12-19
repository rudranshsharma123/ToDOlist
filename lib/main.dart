import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
import 'package:provider/provider.dart';

import 'providerTaskList.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyTaskListProvider(),
          child: MaterialApp(
        title: 'ToDoIst',
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(decoration: TextDecoration.none),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
