class Task {
  String title;
  bool isChecked;

  Task({this.isChecked, this.title});

  void toggleState() {
    isChecked = !isChecked;
  }

  Task.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        isChecked = json['isChecked'];

  Map<String, dynamic> toJson() => {'title': title, 'isChecked': isChecked};
}
