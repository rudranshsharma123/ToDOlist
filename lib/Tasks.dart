
class Task {
  final String title;
  bool isChecked;

  Task({this.isChecked, this.title});

  void toggleState() {
    isChecked = !isChecked;

  }



}
