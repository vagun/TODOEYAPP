import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy dog'),
    Task(name: 'buy cat'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            ischecked: tasks[index].isdone,
            tasktitle: tasks[index].name,
            checkboxCallback: (bool? checkboxstate) {
              if (checkboxstate != null) {
                setState(() {
                  tasks[index].toggledone();
                });
              }
            });
      },
      itemCount: tasks.length,
    );
  }
}
