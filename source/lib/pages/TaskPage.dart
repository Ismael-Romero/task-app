import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/components/CardMyTasks.dart';
import 'package:task/localizations/language/all.dart';

class TaskPage extends StatefulWidget{
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => TaskPageState();
}

class TaskPageState extends State<TaskPage> {

  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: (width > 800)? width*.6 :width,
          height: height,
          // decoration: const BoxDecoration(
          //   color: Colors.white
          // ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    Languages.of(context).titleTasks,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                    ),
                  ),
                ),
                CardMyTask(title: Languages.of(context).t1Title, date: Languages.of(context).dateOne, id: '', priority: 1),
                CardMyTask(title: Languages.of(context).t2Title, date: Languages.of(context).dateOne, id: '', priority: 1),
                CardMyTask(title: Languages.of(context).t3Title, date: Languages.of(context).dateOne, id: '', priority: 1),
                CardMyTask(title: Languages.of(context).t4Title, date: Languages.of(context).dateOne, id: '', priority: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}