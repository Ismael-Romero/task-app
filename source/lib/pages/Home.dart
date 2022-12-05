import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/pages/content/home/DailyTask.dart';
import 'package:task/pages/content/home/MyTasks.dart';
import 'package:task/pages/content/home/PriorityTask.dart';
import 'package:task/pages/content/home/Progress.dart';
import 'package:task/pages/content/home/TeamTask.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static List<Widget> contentOptions = <Widget> [
    const DailyTasks(),
    const MyTasks(),
    const TeamTasks(),
    const PriorityTasks(),
  ];

  int selectedCategory = 0;

  void onItemTapped(int index){
    setState(() => selectedCategory = index );
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> titleCategories = [
      Languages.of(context).catDailyTasks,
      Languages.of(context).catMyTask,
      Languages.of(context).catAssignedTeam,
      Languages.of(context).catPriority,
    ];

    return Scaffold(
        body: Container(
            height: height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  MyHeader(width, height),
                  MyCategories(),
                  MyContent(width, height, titleCategories),
                  MyProgress()
                ],
              ),
            )
        )
    );
  }

  Widget MyHeader(double width, double height) {
    return Stack(
      children: <Widget> [
        Container(
          padding: const EdgeInsets.all(20),
          width: width,
          height: (height < 750) ? height*.25 : height*.15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                Languages.of(context).labelHello,
                style: GoogleFonts.notoSansJavanese(
                  color:Colors.black54,
                  fontSize: (height < 750) ? 22 : 26,
                ),
              ),
              Text(
                "Ismael Romero, ${Languages.of(context).labelWelcome}",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: (height < 750) ? 18 : 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget MyCategories(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          CardCategory(0, Languages.of(context).catDailyTasks),
          const SizedBox(width: 5),
          CardCategory(1, Languages.of(context).catMyTask),
          const SizedBox(width: 5),
          CardCategory(2, Languages.of(context).catAssignedTeam),
          const SizedBox(width: 5),
          CardCategory(3, Languages.of(context).catPriority),
        ],
      ),
    );
  }
  Widget CardCategory(int index, String name){
    return SizedBox(
      height: 35,
      child: Container(
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(51, 102, 255, 1),
          borderRadius: BorderRadius.circular(17.5)
        ),
        child: TextButton(
          autofocus: false,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12
            ),
          ),
          onPressed: (){
            onItemTapped(index);
          },
        ),
      ),
    );
  }

  Widget MyContent(double width, double height, List<String> titleCategories){
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, bottom: 15),
            child: Text(
              titleCategories.elementAt(selectedCategory),
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 10),
          contentOptions.elementAt(selectedCategory)
        ],
      ),
    );
  }

  Widget MyProgress(){
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Text(
              "Progreso",
              style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          const MyProgressContent(),
        ],
      ),
    );
  }
}