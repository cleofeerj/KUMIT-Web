import 'package:flutter/material.dart';
import 'package:newest/NavBar/Navbar.dart';
import 'package:newest/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KUMIT : \nOnline Companion",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 35.0, color: kWhite),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Through continuous learning and data analysis, online companions strive to personalize interactions and anticipate users' needs. The intended user for this system are students and professors from Bicol University- College of Science. The system aims to redefine the attendance management by using Artificial Intelligence that harnesses the use of facial recognition. The KumIT App targets both beginner and technology literate users interested in employing a new way of recording attendance. Students, Professors, relatives that seek accountability to their children showing up to classes, and any non-teaching staff, stand to benefit from insights into how the software can simplify the attendance recording.",
                style: TextStyle(fontSize: 16.0, color: kWhite),
                maxLines:
                    10, // Adjust the maximum number of lines to fit your layout
                overflow: TextOverflow
                    .ellipsis, // Handle overflow by showing ellipsis
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                //
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Click to Download",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 240, 240, 240)),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child:
            Image.asset("images/mainpage_pic.png", width: width, height: 400),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(Constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(Constraints.biggest.width),
          );
        }
      },
    );
  }
}
