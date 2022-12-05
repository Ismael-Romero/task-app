import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/screens/DetailsTask.dart';

class CardTask extends StatelessWidget{
  final String id;
  final String date;
  final String title;
  final int priority;
  final List<Color> colorList;

  CardTask({
    super.key,
    required this.id,
    required this.date,
    required this.title,
    required this.priority,
    required this.colorList
  });

  @override
  Widget build(BuildContext context){

    List details = [title, date, priority];

    return Container(
      width: 250,
      height: 320,
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: colorList
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              date,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
          const SizedBox(height: 90),
          Container(
            width: 100,
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Badges(priority, context),
              const SizedBox(width:38),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30,
                  child: TextButton(
                    child: Text(
                      Languages.of(context).showTask,
                      style:  const TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailsTaskScreen(details: details))
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget Badges(int priority, BuildContext context){
    return SizedBox(
      height: 20,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: (priority == 1)? Colors.red : Colors.green,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          (priority == 1)? Languages.of(context).taskTypeUrgent : Languages.of(context).taskTypeNormal,
          style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}