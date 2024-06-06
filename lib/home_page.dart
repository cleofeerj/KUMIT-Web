import 'package:flutter/material.dart';
import 'package:newest/widgets/app_bar_hp.dart';
import 'package:newest/widgets/large_screen.dart';
import 'package:newest/widgets/responsiveness.dart';
import 'package:newest/widgets/side_menu.dart';
import 'package:newest/widgets/small_screen.dart';

// LAYOUT.DART

class Homepage_web extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
