import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/tast_data.dart';
import 'package:todoey_flutter/wigets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        //////////////////////////////////////
        onPressed: (){
          //flutter 에서 해당 위젯 찾아 설정
          //클릭하면 AddTaskScreen 클래스에서 가져옴
          //showModalBottomSheet -> 아래에서 올라오는 위젯
          showModalBottomSheet(
              context: context,
              builder:(context)=> AddTaskScreen(),
          );
        },
        ///////////////////////////////////
      ),
      //핸드폰에서 터치 가능한 곳에 위치하도록 설정
      //컨테이너 안에 새로운 위젯 추가 가능 , art + enter

      //큰 바디 안에 컬럼(세로 정렬)으로 설정하여 padding 주어짐
      body: Column(
        //정렬방법 start 좌 정렬
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            //컨테이너 안에 컬럼 위젯 추가
            child: Column(
              //Column 시작 위치 변경
              crossAxisAlignment: CrossAxisAlignment.start,
              //childredn 사용 하기 위해선 <widget> [] 사용해야함 ?
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  //상단에 tasks 갯수만큼 표시
                  //Provider 사용함
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),


              ],
            ),
          ),

          //화면에 맞게 크기 수정해줌
          //wrap widget 사용하여 expanded , 크기 화면에 맞춰 확장됨
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  //가장자리 수정
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                  ),
              ),
              //테스트 박스
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




