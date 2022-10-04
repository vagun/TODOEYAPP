import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            ischecked: Provider.of<TaskData>(context).tasks[index].isdone,
            tasktitle: Provider.of<TaskData>(context).tasks[index].name,
            checkboxCallback: (bool? checkboxstate) {
              // if (checkboxstate != null) {
              //   // setState(() {
              //   //   widget.tasks[index].toggledone();
              //   // });
              // }
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
