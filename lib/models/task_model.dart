class TaskModel {
  //attributes
  String title;
  bool isDone;

  //constructor
  TaskModel({required this.title, this.isDone = false});

  //methods
  void toggleDone() {
    isDone = !isDone;
  }
}
