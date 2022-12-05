import 'package:flutter/material.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/components/CardTask.dart';

class PriorityTasks extends StatefulWidget{
  const PriorityTasks({super.key});
  @override
  State<PriorityTasks> createState() => PriorityTasksState();
}

class PriorityTasksState extends State<PriorityTasks>{

  @override
  Widget build(BuildContext context) {

    const List<Color> priorityTask = [Color.fromRGBO(157, 18, 18, 1.0), Color.fromRGBO(101, 6, 6, 1.0)];

    List<Widget> listTasks = [
      CardTask(id: "A1", date: Languages.of(context).dateOne, title: Languages.of(context).t1Title, priority: 0, colorList: priorityTask),
      CardTask(id: "A2", date: Languages.of(context).dateOne, title: Languages.of(context).t2Title, priority: 0, colorList: priorityTask),
      CardTask(id: "A3", date: Languages.of(context).dateTwo, title: Languages.of(context).t3Title, priority: 1, colorList: priorityTask),
      CardTask(id: "A4", date: Languages.of(context).dateTwo, title: Languages.of(context).t4Title, priority: 1, colorList: priorityTask),
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