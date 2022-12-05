import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/localizations/locale_constant.dart';
import 'package:task/models/language_data.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
  const MyAppBar({Key? key}) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar>{

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Text(
        (height > 750)? "" :"Cupcake",
        style: const TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
        ),
      ),
      actions: <Widget> [
        Ink(
          child: DropdownButton <LanguageData> (
            icon: const Icon(Icons.language, size: 20),
            hint: Text(
              Languages.of(context).labelSelectLanguage,
              style: GoogleFonts.lato(
                fontSize: 16,
              ),
            ),
            items: LanguageData.languageList().map((e) => DropdownMenuItem <LanguageData>(
              value: e,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    e.name,
                    style: const TextStyle(
                        fontSize: 16
                    ),
                  )
                ],
              ),
            )).toList(),
            onChanged: (LanguageData ?languageData){
              changeLanguage(context, languageData!.languageCode);
            },
          ),
        ),
        const SizedBox(width: 20),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 22,
          color: Colors.black,
        ),
        onPressed: () => {
          Scaffold.of(context).openDrawer()
        },
      ),
    );
  }
}