import 'package:task/localizations/language/all.dart';

class LanguageEN extends Languages {
  @override
  String get appName => "Multi-languages";


  @override
  String get labelHello => "Hello!";

  @override
  String get labelWelcome => "welcome back!";

  @override
  String get labelSelectLanguage => "EN(US)";

  @override
  String get aBHome => "Home";

  @override
  String get aBMyTask => "My Task";

  @override
  String get aBNotifications => "Notifications";

  @override
  String get aBExitApp => "Log out";

  // HomePage -> Categories
  @override
  String get catDailyTasks => "Daily Tasks";
  @override
  String get catMyTask => "My Task";
  @override
  String get catAssignedTeam => "Assigned to team";
  @override
  String get catPriority => "Priority";
  @override
  String get catDelayed => "Delayed";

  // LabelButton - Show Task
  @override
  String get showTask => "Show task ->";

  //Type Task
  @override
  String get taskTypeUrgent => "Urgent";
  @override
  String get taskTypeNormal => "Normal";

  // MyTask
  @override
  String get dateOne => "05 december 2022";
  @override
  String get dateTwo => "06 december 2022";
  @override
  String get t1Title => "Check kitchen electrical connections";
  @override
  String get t2Title => "Verification of gas leaks";
  @override
  String get t3Title => "Maintenance of stove burners";
  @override
  String get t4Title => "Engine room overhaul";

  // Progress  Task
  @override
  String get pt1Title => "Check kitchen electrical connections";
  @override
  String get pt2Title => "Verification of gas leaks";
  @override
  String get pt3Title => "Maintenance of stove burners";
  @override
  String get pt1Status => "has started the task";
  @override
  String get pt2Status => "is about to finish the task";
  @override
  String get pt3Status => "has completed the task";

  // Notification Status  Task
  @override
  String get statusNotificationComplete => "has successfully completed the task";
  @override
  String get statusNotificationDelayed => "has completed the task late";
  @override
  String get dayYesterday => "Yesterday";
  @override
  String get dayToDay => "To day";
  @override
  String get titleNotification => "Task completed";

  //Add Task
  @override
  String get addTTitle => "Create a new task";
  @override
  String get addTTitleTask => "What is the task?";
  @override
  String get addTDescription => "Task Description ";
  @override
  String get addTResponsible => "Who is responsible?";
  @override
  String get addLabelBTNadd => "Create task";


  //BTN Details Task
  @override
  String get btnEvidence => "Attach evidence";
  @override
  String get btnFinish => "End task";

  //TaskPage -> CardMyTask
  @override
  String get titleTasks => "My Tasks";

}