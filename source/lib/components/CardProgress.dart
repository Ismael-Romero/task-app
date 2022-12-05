import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProgress extends StatelessWidget{

  final String title;
  final String user;
  final String status;

  CardProgress({super.key, required this.title, required this.user, required this.status});

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
            width: width*.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                Text(
                  '$user $status',
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                const SizedBox(height: 10),
                ProgressBar()
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ProgressBar extends StatefulWidget{
  @override
  State<ProgressBar> createState() => ProgressBarState();
}

class ProgressBarState extends State<ProgressBar> with TickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      value: 10,
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return LinearProgressIndicator(
      value: controller.value,
    );
  }

  // LinearProgressIndicator ProgressComplete(){
  //   return const LinearProgressIndicator(
  //     value: 0.0,
  //   );
  // }
}