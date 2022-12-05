import 'package:flutter/material.dart';
import 'package:task/pages/DeetailsTask.dart';
import 'home.dart';

class DetailsTaskScreen extends StatefulWidget {
  List details;

  DetailsTaskScreen({required this.details});
  @override
  State<StatefulWidget> createState() => DetailsTaskState();
}

class DetailsTaskState extends State<DetailsTaskScreen> {

  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.0,
          automaticallyImplyLeading: false,
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
          // title: Text(
          //   "Detalles de la tarea",
          //   style: TextStyle(color: Colors.black),
          // ),
          shadowColor: Colors.white,

        ),
        body: DetailsTaskPage(details: widget.details),
    );
  }
}