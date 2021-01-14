import 'package:flutter/foundation.dart';
import 'Tasks.dart';

class MyTaskListProvider extends ChangeNotifier {
  List<Task> taskList = [
    Task(title: "Sample", isChecked: false),
    Task(title: "Sample992", isChecked: false)
  ];

  int get getLenghtOftheTask {
    return taskList.length;
  }

  void addTasksInto(String taskName) {
    taskList.add(Task(title: taskName, isChecked: false));
    notifyListeners();
  }

  void toggleState(index) {
    taskList[index].toggleState();
    notifyListeners();
  }

  void deleteTasks(int index) {
    taskList.removeAt(index);
    notifyListeners();
  }

  void loadTask(var list) {
    taskList.clear();
    for (var item in list) {
      taskList.add(Task(title: item['title'], isChecked: item['isChecked']));
    }

    notifyListeners();
  }
}
