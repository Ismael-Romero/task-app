import 'package:flutter/material.dart';
import 'package:task/components/CardProgress.dart';
import 'package:task/localizations/language/all.dart';

class MyProgressContent extends StatefulWidget{
  const MyProgressContent({super.key});
  @override
  State<MyProgressContent> createState() => MyProgressContentState();
}

class MyProgressContentState extends State<MyProgressContent>{
  @override
  Widget build(BuildContext context) {

    List<CardProgress> listCardProgress = [
      CardProgress(title: Languages.of(context).pt1Title, user: "Ismael", status: Languages.of(context).pt1Status),
      CardProgress(title: Languages.of(context).pt2Title, user: "David", status: Languages.of(context).pt2Status),
      CardProgress(title: Languages.of(context).pt3Title, user: "Daniela", status: Languages.of(context).pt3Status),
    ];

    return Container(
      margin: const EdgeInsets.only(top:20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (int i = 0; i < listCardProgress.length; i++) listCardProgress[i],
        ],
      ),
    );
  }
}