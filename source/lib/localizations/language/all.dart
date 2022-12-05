import 'package:flutter/material.dart';

abstract class Languages {

  static Languages of(BuildContext context) {
    return Localizations.of(context, Languages);
  }

  String get appName;

  String get labelSelectLanguage;

  String get labelHello;
  String get labelWelcome;

  // AppBar
  String get aBHome;
  String get aBMyTask;
  String get aBNotifications;
  String get aBExitApp;

  // HomePage -> Categories
  String get catDailyTasks;
  String get catMyTask;
  String get catAssignedTeam;
  String get catPriority;
  String get catDelayed;

  // LabelButton - Show Task
  String get showTask;

  //Type Task
  String get taskTypeUrgent;
  String get taskTypeNormal;

  // MyTask
  String get dateOne;
  String get dateTwo;
  String get t1Title;
  String get t2Title;
  String get t3Title;
  String get t4Title;

  // Progress  Task
  String get pt1Title;
  String get pt2Title;
  String get pt3Title;
  String get pt1Status;
  String get pt2Status;
  String get pt3Status;

  // Notification Status  Task
  String get statusNotificationComplete;
  String get statusNotificationDelayed;
  String get dayYesterday;
  String get dayToDay;
  String get titleNotification;

  //Add Task
  String get addTTitle;
  String get addTTitleTask;
  String get addTDescription;
  String get addTResponsible;
  String get addLabelBTNadd;

  //BTN Details Tasks
  String get btnEvidence;
  String get btnFinish;

  //TaskPage -> CardMyTask
  String get titleTasks;
}