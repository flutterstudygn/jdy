import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: '배고파'),
    Task(name: '우왕'),
  ];

  //다른코드 오류 없애기 위해 만듬
  //tasks --> _tasks 로 리턴

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }


  //카운트 길이 리턴
  int get taskCount{
    return _tasks.length;
  }

  //newTaskTitle 변경되면 리스터 작동
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }



}