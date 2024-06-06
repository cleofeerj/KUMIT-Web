import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newest/colors.dart';
import 'package:newest/home_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'KUMIT',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kWhite, fontSize: 30),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: kWhite),
                ),
                SizedBox(width: 30),
                Text(
                  'About Us',
                  style: TextStyle(color: kWhite),
                ),
                SizedBox(width: 30),
                Text(
                  'FAQs',
                  style: TextStyle(color: kWhite),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  color: kBlueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage_web()),
                    );
                  },
                  child: Text(
                    'Login',
                    style:
                        TextStyle(color: kWhite, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              'KUMIT',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kWhite, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'About Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'FAQs',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  MaterialButton(
                    color: kBlueColor.withOpacity(.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage_web()),
                      );
                    },
                    child: Text(
                      'Login',
                      style:
                          TextStyle(color: kWhite, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
