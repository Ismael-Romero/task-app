import 'package:flutter/material.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/components/CardTask.dart';

class TeamTasks extends StatefulWidget{
  const TeamTasks({super.key});
  @override
  State<TeamTasks> createState() => TeamTasksState();
}

class TeamTasksState extends State<TeamTasks>{

  @override
  Widget build(BuildContext context) {

    const List<Color> teamTask = [Color.fromRGBO(5, 108, 133, 1.0), Color.fromRGBO(4, 31, 47, 1.0)];

    List<Widget> listTasks = [
      CardTask(id: "A1", date: Languages.of(context).dateOne, title: Languages.of(context).t1Title, priority: 0, colorList: teamTask),
      CardTask(id: "A2", date: Languages.of(context).dateOne, title: Languages.of(context).t2Title, priority: 0, colorList: teamTask),
      CardTask(id: "A3", date: Languages.of(context).dateTwo, title: Languages.of(context).t3Title, priority: 1, colorList: teamTask),
      CardTask(id: "A4", date: Languages.of(context).dateTwo, title: Languages.of(context).t4Title, priority: 1, colorList: teamTask),
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