import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_model.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> taskList;
  TasksList(this.taskList);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.taskList[index].title,
          isChecked: widget.taskList[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.taskList[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
