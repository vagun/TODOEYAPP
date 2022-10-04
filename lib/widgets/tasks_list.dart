import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return TaskTile(
              tasktitle: task.name,
              ischecked: task.isdone,
              checkboxCallback: (bool? checkboxstate) {
                TaskData.updatetask(task);
              },
              longpresscallback: () {
                TaskData.deletetask(task);
              },
            );
          },
          itemCount: TaskData.taskcount,
        );
      },
    );
  }
}
