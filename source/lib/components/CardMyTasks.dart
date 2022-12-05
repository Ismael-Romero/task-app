import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/DetailsTask.dart';

class CardMyTask extends StatelessWidget{
  final String id;
  final String date;
  final String title;
  final int priority;
  CardMyTask({
    super.key,
    required this.id,
    required this.date,
    required this.title,
    required this.priority,
  });

  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    List details = [title, date, priority, id];

    return Container(
      width: width,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(20),
          shadowColor: Colors.white
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(51, 102, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.checklist,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: (width > 800)? width*.4 :width*.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    details[0],
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    'Morbi in velit eu enim faucibus condimentum. Sed metus.',
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    details[1],
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ],
              ),
            ),
          ],
        ),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsTaskScreen(details: details))
          );
        },
      ),
    );
  }
}
