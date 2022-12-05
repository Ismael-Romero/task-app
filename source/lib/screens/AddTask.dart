import 'package:flutter/material.dart';
import 'package:task/pages/AddTask.dart';

import 'home.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddTaskState();
}

class AddTaskState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen())
            );
          },
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,

      ),
      body: const AddTaskPage()
    );
  }
}