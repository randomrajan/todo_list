import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(value: false),
      title: Text('This is our task!'),
    );
  }
}
