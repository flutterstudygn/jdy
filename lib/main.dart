import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tast_data.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp 상위에 넣을것
    //Provider 사용하기 위한 ChangeNotifierProvider
    return ChangeNotifierProvider(
      //builder --> 프로퍼티 위치 를 위한것?
      //tast_data 에서 TaskData 가져옴
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

