import 'package:flutter/material.dart';
import 'package:todo_list/modal/task.dart';
import 'tasks_list.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        //onChanged: Task().toggleDone(),
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}

// (bool checkBoxState) {
// setState(() {
// isChecked = checkBoxState;
// });
// },


