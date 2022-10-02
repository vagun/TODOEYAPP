import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;
 
  TasksList({required this.tasks});
  
  @override

  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            ischecked: widget.tasks[index].isdone,
            tasktitle: widget.tasks[index].name,
            checkboxCallback: (bool? checkboxstate) {
              if (checkboxstate != null) {
                setState(() {
                  widget.tasks[index].toggledone();
                });
              }
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
