import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/localizations/language/all.dart';

class CardNotification extends StatelessWidget{

  final String user;
  final String task;
  final String description;
  final String day;
  final String hour;

  final int status;

  CardNotification({
    super.key,
    required this.user,
    required this.task,
    required this.description,
    required this.status,
    required this.day,
    required this.hour
  });

  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: (status == 1)? const Color.fromRGBO(51, 102, 255, 1) : Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: (width > 800)? width*.3 : width*.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Languages.of(context).titleNotification,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                Text(
                  '$user $description: $task',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                const SizedBox(height: 10),
                Text(
                  "$day / $hour",
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
