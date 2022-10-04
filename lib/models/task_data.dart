import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
 List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy dog'),
    Task(name: 'buy cat'),
  ];
}