import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tast_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      //배경 색 지정
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(45.0),
        decoration: BoxDecoration(
            //색상지정
            color: Colors.white,
            //가장자리 둥굴게 하기
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          //양쪽 끝으로 넓히기
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              //키보드 자동 생성하기
              autofocus: true,
              //커서 센터에 가도록 하기
              textAlign: TextAlign.center,

              ////////////////////////////
              //텍스트 필드 변경된것 적용시킴
              onChanged: (newText){
                newTaskTitle = newText;
              },

            ),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,

              /////////////////////
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);

                ////////////////////

              },
            ),
          ],
        ),
      ),
    );
  }
}
