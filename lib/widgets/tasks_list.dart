import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list/modal/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, int   index){
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (bool checkBoxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    },
    itemCount: tasks.length,
    );
  }
}