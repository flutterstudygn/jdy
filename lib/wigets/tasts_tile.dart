import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //밑줄
      title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//(bool checkboxState) {
//setState(() {
//isChecked = checkboxState;
//});
//}

//class TaskCheckbox extends StatelessWidget {
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//
//  @override
//  Widget build(BuildContext context) {
//    //체크박스
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkboxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//}
