import 'package:flutter/material.dart';
import 'package:portfolio/components/home/bottom_bar.dart';
import 'package:portfolio/components/project/profile_banner.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/content/project_content.dart';
import 'package:portfolio/screens/main_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        children: [
          const ProfileBanner(title: "About Me",animationMessage: "Android & Flutter Developer"),
          Container(
            margin: const EdgeInsets.all(defaultPadding),
            padding: const EdgeInsets.all(defaultPadding/2),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(defaultPadding/2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white38,
                  offset: Offset(
                      0,0
                  ),
                  blurRadius: 8,
                  spreadRadius: 1.0,
                ), //BoxShadow
              ],
            ),
            child: Padding(
              padding:  const EdgeInsets.symmetric(vertical: defaultPadding,horizontal:defaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProjectContent.aboutMe)
                ],
              ),
            ),
          ),
          const BottomBar()
        ]
    );
  }
}
