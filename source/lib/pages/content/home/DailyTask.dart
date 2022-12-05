import 'package:flutter/material.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/components/CardTask.dart';

class DailyTasks extends StatefulWidget{
  const DailyTasks({super.key});
  @override
  State<DailyTasks> createState() => DailyTasksState();
}

class DailyTasksState extends State<DailyTasks>{

  @override
  Widget build(BuildContext context) {

    const List<Color> dailyTask = [Color.fromRGBO(13, 138, 241, 1.0), Color.fromRGBO(4, 65, 110, 1.0)];

    List<Widget> listTasks = [
      CardTask(id: "A1", date: Languages.of(context).dateOne, title: Languages.of(context).t1Title, priority: 0, colorList: dailyTask),
      CardTask(id: "A2", date: Languages.of(context).dateOne, title: Languages.of(context).t2Title, priority: 0, colorList: dailyTask),
      CardTask(id: "A3", date: Languages.of(context).dateTwo, title: Languages.of(context).t3Title, priority: 1, colorList: dailyTask),
      CardTask(id: "A4", date: Languages.of(context).dateTwo, title: Languages.of(context).t4Title, priority: 1, colorList: dailyTask),
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