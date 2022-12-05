import 'package:flutter/material.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/components/CardTask.dart';

class MyTasks extends StatefulWidget{
  const MyTasks({super.key});
  @override
  State<MyTasks> createState() => MyTasksState();
}

class MyTasksState extends State<MyTasks>{

  @override
  Widget build(BuildContext context) {

    const List<Color> myTask = [Color.fromRGBO(43, 32, 182, 1.0), Color.fromRGBO(16, 12, 72, 1.0)];

    List<Widget> listTasks = [
      CardTask(id: "A1", date: Languages.of(context).dateOne, title: Languages.of(context).t1Title, priority: 0, colorList: myTask),
      CardTask(id: "A2", date: Languages.of(context).dateOne, title: Languages.of(context).t2Title, priority: 0, colorList: myTask),
      CardTask(id: "A3", date: Languages.of(context).dateTwo, title: Languages.of(context).t3Title, priority: 1, colorList: myTask),
      CardTask(id: "A4", date: Languages.of(context).dateTwo, title: Languages.of(context).t4Title, priority: 1, colorList: myTask),
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i = 0; i < listTasks.length; i++) listTasks[i]
        ],
      ),
    );
  }
}