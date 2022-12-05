import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/components/CardNotification.dart';
import 'package:task/localizations/language/all.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: (width > 800)? width*.5 :width-50,
          height: height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    Languages.of(context).aBNotifications,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                  ),
                ),
                CardNotification(
                  user: 'Ismael Romero',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationComplete,
                  status: 1,
                  day: Languages.of(context).dayToDay,
                  hour: "10:39 a.m.",
                ),
                CardNotification(
                  user: 'David',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationDelayed,
                  status: 0,
                  day: Languages.of(context).dayToDay,
                  hour: "09:00 a.m.",
                ),
                CardNotification(
                  user: 'Daniela',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationComplete,
                  status: 1,
                  day: '04-12-2022',
                  hour: "20:30 p.m.",
                ),
                CardNotification(
                  user: 'Daniela',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationComplete,
                  status: 1,
                  day: '03-12-2022',
                  hour: "20:09 p.m.",
                ),
                CardNotification(
                  user: 'Daniela',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationComplete,
                  status: 1,
                  day: "03-12-2022",
                  hour: "16:00 p.m.",
                ),
                CardNotification(
                  user: 'Ismael Romero',
                  task: Languages.of(context).t3Title,
                  description: Languages.of(context).statusNotificationComplete,
                  status: 0,
                  day: "02-12-2022",
                  hour: "16:00 p.m.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}