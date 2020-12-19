
import 'package:flutter/material.dart';
import 'ListTile.dart';
import 'package:provider/provider.dart';
import 'package:ToDoIst/providerTaskList.dart';

class BuildingTheToDoList extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<MyTaskListProvider>(context).getLenghtOftheTask,
      itemBuilder: (BuildContext context, index) {
        return TileList(
          title: Provider.of<MyTaskListProvider>(context).taskList[index].title,
          check: Provider.of<MyTaskListProvider>(context)
              .taskList[index]
              .isChecked,
          boolCheckCallback: (value) {
            Provider.of<MyTaskListProvider>(context, listen: false)
                .toggleState(index);

            // Provider.of<MyTaskListProvider>(context, listen: false).toggleState(
            //     Provider.of<MyTaskListProvider>(context, listen: false)
            //         .taskList[index]); // setState(() {

            //   widget.taskList[index].toggleState();
            // });
          },
          deleteCallBack: () {
            Provider.of<MyTaskListProvider>(context, listen: false).deleteTasks(index);
          },
        );
      },
    );
  }
}
