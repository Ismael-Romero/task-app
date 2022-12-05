import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/screens/home.dart';

class AddTaskPage extends StatefulWidget{
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => AddTaskPageState();
}

class AddTaskPageState extends State<AddTaskPage> {

  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String dropdownvalue = 'Ismael Romero';
    var items = [
      'Ismael Romero',
      'David Ortega',
      'Daniela Contreras'
    ];

    return Scaffold(
      body: Center(
        child: Container(
          width: (width >= 800)? 600: width,
          height: height,
          color: const Color.fromRGBO(34, 68, 170, .9),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Languages.of(context).addTTitle,
                        style: GoogleFonts.notoSansJavanese(
                          color:Colors.white,
                          fontSize: (height < 750) ? 22 : 26,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: Languages.of(context).addTTitleTask,
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration:  InputDecoration(
                                labelText: Languages.of(context).addTDescription,
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              Languages.of(context).addTResponsible,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            DropdownButton(
                              value: dropdownvalue,
                              dropdownColor: Colors.black,
                              style: const TextStyle(
                                color: Colors.white
                              ),
                              icon: const Icon(Icons.person, color: Colors.white,),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: (width >= 800)? height+90: height*.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      SfCalendar(
                        backgroundColor: Colors.white,
                        selectionDecoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0,.1)
                        ),
                        view: CalendarView.month,
                      ),
                      const SizedBox(height: 40),
                      Container(
                        margin: const EdgeInsets.only(left: 30, right: 30),
                        width: width,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(51, 102, 255, 1)),
                          ),
                          child: Text(
                            Languages.of(context).addLabelBTNadd,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen())
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}