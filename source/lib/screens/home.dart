import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/components/AppBar.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/pages/Home.dart';
import 'package:task/pages/Notifications.dart';
import 'package:task/pages/TaskPage.dart';
import 'package:task/screens/AddTask.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  static const List<Widget> bodyOptions = <Widget> [
    HomePage(),
    TaskPage(),
    NotificationPage(),
  ];

  int selectedIndex = 0;

  void onItemTapped(int index){
    setState(() => selectedIndex = index );
  }

  @override
  Widget build(BuildContext context){

    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const MyAppBar(),
      body: bodyOptions.elementAt(selectedIndex),
      drawer: MyDrawer(),
      bottomNavigationBar: (height < 750)? null : MyBottomNavigationBar(),
      floatingActionButton: (selectedIndex == 0)? FloatingActionButton(
        backgroundColor: const Color.fromRGBO(51, 102, 255, 1),
        child: const Icon(
          Icons.add_task
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskScreen())
          );
        },
      ) : null,
    );
  }

  Widget MyBottomNavigationBar(){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      items: <BottomNavigationBarItem> [
        MyBNBItem(Icons.home, Languages.of(context).aBHome),
        MyBNBItem(Icons.checklist, Languages.of(context).aBMyTask),
        MyBNBItem(Icons.notifications, Languages.of(context).aBNotifications),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color.fromRGBO(100, 100, 100, 1),
      onTap: onItemTapped,
    );
  }

  BottomNavigationBarItem MyBNBItem(IconData icon, String tooltip){
    return BottomNavigationBarItem(
      icon: Icon(icon, color: Colors.black38),
      label: '',
      tooltip: tooltip,
      activeIcon: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  color: Color(0x12006FFF),
                  offset: Offset(0, 1),
                  blurRadius: 20
              )
            ]
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }

  Widget MyDrawer(){
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          const UserAccountsDrawerHeader(
            accountName: Text('Ismael Romero'),
            accountEmail: Text('ismael@gmail.com.mx'),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/cover.jpg'),
                  fit: BoxFit.cover
              ),
            ),
          ),
          const Divider(),
          MyListitle(Languages.of(context).aBHome, Icons.home, 0),
          const Divider(),
          MyListitle(Languages.of(context).aBMyTask, Icons.checklist, 1),
          MyListitle(Languages.of(context).aBNotifications, Icons.notifications, 2),
          const Divider(),
          MyListitle(Languages.of(context).aBExitApp, Icons.exit_to_app, -1)
        ],
      ),
    );
  }

  ListTile MyListitle(String title, IconData icon, int index){
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: (){
        if (index.isNegative){
          SystemNavigator.pop();
          return;
        }
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}