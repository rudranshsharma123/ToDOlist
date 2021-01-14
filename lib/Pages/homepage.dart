import 'package:flutter/material.dart';
import 'package:ToDoIst/Tasks.dart';
import 'bottom_sheet.dart';
import 'package:ToDoIst/Widgets/toDoListbuilder.dart';
import 'package:ToDoIst/SharedPrefs.dart';
import 'package:provider/provider.dart';
import 'package:ToDoIst/providerTaskList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

SharedPref prefs = SharedPref();
var loadedTask;
bool isFirstTime; 

class _HomePageState extends State<HomePage> {
  Widget buildBottomSheet(BuildContext context) {
    return SwipeUpBottomSheet();
  }

  loadSharedPrefs() async {
    try {
      var loadedTasklist = await prefs.read('tasks');
      setState(() {
        loadedTask = loadedTasklist;
        Provider.of<MyTaskListProvider>(context, listen: false)
            .loadTask(loadedTask);

        print('loadsde');
        print(loadedTask[0]['title']);
      });
    } catch (E) {
      print("blep you fool");
      print(E);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        child: Icon(
          Icons.plus_one,
          color: Colors.black,
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: FlatButton(
                  onPressed: () {
                    
                    prefs.save(
                        "tasks",
                        Provider.of<MyTaskListProvider>(context, listen: false)
                            .taskList);
                    print('ohio saved');
                    loadSharedPrefs();
                  },
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ToDoIst",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${Provider.of<MyTaskListProvider>(context).getLenghtOftheTask} Tasks",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: BuildingTheToDoList(),
            // child: ListView.builder(
            //   itemBuilder: (context, index) {
            //     return TileList(check: true,);
            //   },
            // ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
