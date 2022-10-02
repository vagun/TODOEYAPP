import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked=false;

  void checkboxcallback (bool? checkboxstate) {
    if(checkboxstate!=null){
        setState(() {
          ischecked=checkboxstate;
        });
  }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is a task",style: TextStyle(decoration: ischecked? TextDecoration.lineThrough:null),),
      trailing: TaskCheckbox(checkboxstate: ischecked,toggleCheckBoxState: checkboxcallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  
  final bool checkboxstate ;
   final ValueChanged<bool?> toggleCheckBoxState;

  TaskCheckbox({required this.checkboxstate,required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxstate,
      onChanged: toggleCheckBoxState,
      
    );
  }
}