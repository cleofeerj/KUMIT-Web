// top_nav.dart

import 'package:flutter/material.dart';
import 'package:newest/colors.dart';
import 'package:newest/widgets/custom_text.dart';
import 'package:newest/widgets/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "images/profile_icon.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      title: Row(
        children: [
          Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: const CustomText(
                text: "KUMIT : Online Companion",
                color: kBlueColor,
                size: 20,
                weight: FontWeight.bold,
              )),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(
                Icons.settings,
                color: kGreyColor,
              ),
              onPressed: () {}),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: kGreyColor,
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: kGreyColor,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
            text: "Erjay Cleofe",
            size: 18,
            color: kVlack,
            weight: FontWeight.w400,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: kBlueColor, borderRadius: BorderRadius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: kGreyColor,
                child: Icon(
                  Icons.person_outline,
                  color: kWhite,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: const IconThemeData(color: kVlack),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
