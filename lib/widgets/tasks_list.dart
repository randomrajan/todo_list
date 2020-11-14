import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list/modal/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, int   index){
      return TaskTile(taskTitle: tasks[index], isChecked: tasks[index].toggleDone());
    });
  }
}