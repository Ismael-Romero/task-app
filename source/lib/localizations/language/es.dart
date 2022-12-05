import 'package:task/localizations/language/all.dart';

class LanguageES extends Languages {
  @override
  String get appName => "Multi-languages";

  @override
  String get labelHello => "¡Hola!";
  @override
  String get labelWelcome => "bienvenido :)";
  @override
  String get labelSelectLanguage => "ES(MX)";

  @override
  String get aBHome => "Inicio";

  @override
  String get aBMyTask => "Mis tareas";

  @override
  String get aBNotifications => "Notificaciones";

  @override
  String get aBExitApp => "Cerrar sesión";


  // HomePage -> Categories
  @override
  String get catDailyTasks => "Tareas del día";
  @override
  String get catMyTask => "Mis tareas";
  @override
  String get catAssignedTeam => "Asignadas al equipo";
  @override
  String get catPriority => "Prioridad";
  @override
  String get catDelayed => "Retrasadas";

  // LabelButton - Show Task
  @override
  String get showTask => "Ver tarea ->";

  //Type Task
  @override
  String get taskTypeUrgent => "Urgente";
  @override
  String get taskTypeNormal => "Normal";

  // MyTask
  @override
  String get dateOne => "05 diciembre 2022";
  @override
  String get dateTwo => "06 diciembre 2022";
  @override
  String get t1Title => "Revisar las conexiones eléctricas de la cocina";
  @override
  String get t2Title => "Verificación de fugas de gas";
  @override
  String get t3Title => "Mantenimiento a quemadores de la cocina";
  @override
  String get t4Title => "Revisión de sala de maquinas";


  // Progress  Task
  @override
  String get pt1Title => "Revisar las conexiones eléctricas de la cocina";
  @override
  String get pt2Title => "Verificación de fugas de gas";
  @override
  String get pt3Title => "Mantenimiento a quemadores de la cocina";
  @override
  String get pt1Status => "ha comenzado la tarea";
  @override
  String get pt2Status => "está por terminar la tarea";
  @override
  String get pt3Status => "ha compelatado la tarea";

  // Progress  Task
  @override
  String get statusNotificationComplete => "ha completado la tarea";
  @override
  String get statusNotificationDelayed => "finalizó la tarea con retraso";
  @override
  String get dayYesterday => "Ayer";
  @override
  String get dayToDay => "Hoy";
  @override
  String get titleNotification => "Tarea completada";

  //Add Task
  @override
  String get addTTitle => "Crear una nueva tarea";
  @override
  String get addTTitleTask => "¿Cuál es la tarea?";
  @override
  String get addTDescription => "Descripción";
  @override
  String get addTResponsible => "¿Quién es el responsable?";
  @override
  String get addLabelBTNadd => "Crear tarea";

  //BTN Details Task
  @override
  String get btnEvidence => "Adjuntar evidencia";
  @override
  String get btnFinish => "Finalizar tarea";

  //TaskPage -> CardMyTask
  @override
  String get titleTasks => "Mis Tareas";
}