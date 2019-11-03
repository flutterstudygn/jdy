import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/wigets/tasts_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tast_data.dart';

//stateful 사용하여 업데이트 가능하도록 만든다
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //consumer 사용하여 provider.of~~~ 간략하게
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                  //Provider.of<TaskData>(context)
                  //Consumer 를 사용함으로써 Provider.of~~~ 사용하지 않고 taskData로 대체 가능함
                  taskTitle: taskData.tasks[index].name,
                  isChecked: taskData.tasks[index].isDone,
                  checkboxCallback: (checkboxState) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
                  });
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
