import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // ref the box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ['Make a Tutorial', false],
      ['Do Exercises', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
