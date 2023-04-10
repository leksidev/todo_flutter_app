import 'package:flutter/material.dart';
import 'package:todo_flutter_app/UI/widgets/task_tile.dart';
import 'package:todo_flutter_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState) {
                    taskData.updateTask(task);
                  },
                  longPressCallback: () => taskData.deleteTask(index)),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
