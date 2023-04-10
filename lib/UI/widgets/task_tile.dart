import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final VoidCallback longPressCallback;

  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 18.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.indigoAccent,
        // onChanged: toggleCheckboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
