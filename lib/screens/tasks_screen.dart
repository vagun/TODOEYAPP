import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) =>AddTaskScreen() );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




