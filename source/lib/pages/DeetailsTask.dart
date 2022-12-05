import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/localizations/language/all.dart';
import 'package:task/screens/home.dart';

class DetailsTaskPage extends StatefulWidget{
  List details;
  DetailsTaskPage({super.key, required this.details});

  @override
  State<DetailsTaskPage> createState() => DetailsTaskPageState();
}

class DetailsTaskPageState extends State<DetailsTaskPage> {
  @override
  Widget build(BuildContext context){

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra orci vitae efficitur volutpat. Nulla ultricies nulla et augue viverra, et finibus nibh vehicula. Integer urna elit, blandit at pharetra ac, rutrum vel tellus. Nulla ac felis mi. Curabitur sodales lorem vitae dolor molestie lobortis. Integer eget nunc aliquet, suscipit nisl eget, dictum sapien. Aliquam sed orci lectus. Maecenas semper, libero interdum eleifend pretium, lectus risus pretium tortor, et venenatis ante dui id nisi. Aenean sed tempor elit. Proin luctus posuere elit, eu laoreet velit feugiat et. Sed pellentesque vulputate pellentesque. Nunc felis diam, accumsan ac augue vitae, facilisis consectetur ex.";

    List<String> images = [
      "assets/images/evidence/img01.jpg",
      "assets/images/evidence/img02.jpg",
      "assets/images/evidence/img03.jpg",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: (height > 800)? width : width*.7,
          height: height,
          padding: const EdgeInsets.only(left: 30, right: 30),
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            color: Colors.white
            // gradient:  LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [Colors.red, Colors.white]
            // ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.details[0],
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: true,

                ),
                const SizedBox(height: 20),
                Text(
                  widget.details[1],
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: true,

                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        imageViewEvidence(images[0]),
                        imageViewEvidence(images[1]),
                        imageViewEvidence(images[2]),
                      ],
                    ),
                  )
                ),
                SizedBox(
                  width: width,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(51, 102, 255, 1)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.camera
                        ),
                        const SizedBox(width: 10),
                        Text(
                          Languages.of(context).btnEvidence,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){},
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: width,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(51, 102, 255, 1)),
                    ),
                    child: Text(
                      Languages.of(context).btnFinish,
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
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget imageViewEvidence(String path){
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}