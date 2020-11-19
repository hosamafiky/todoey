import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskTile({
    this.isChecked,
    this.title,
    this.checkboxCallback,
    this.longPressCallback,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallback,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
