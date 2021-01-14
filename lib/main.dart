import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
import 'package:provider/provider.dart';
import 'Splash Screen/splash_screen.dart';
import 'providerTaskList.dart';
import 'SharedPrefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

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
        // home: HomePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/app': (context) => HomePage(),
        },
      ),
    );
  }
}
