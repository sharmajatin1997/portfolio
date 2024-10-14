import 'package:flutter/material.dart';
import 'package:portfolio/components/home/bottom_bar.dart';
import 'package:portfolio/components/project/project_banner.dart';
import 'package:portfolio/constants.dart';
import 'main_screen.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({Key? key,this.title,this.animationMessage,this.projectType,this.projectLink,this.projectContent,this.iosLink}) : super(key: key);

  final String? title;
  final String? animationMessage;
  final String? projectType;
  final String? projectLink;
  final String? projectContent;
  final String? iosLink;


  @override
  Widget build(BuildContext context) {
    return  MainScreen(
        children: [
          ProjectBanner(title: title,animationMessage: animationMessage,projectType: projectType,projectLink: projectLink,iosLink:iosLink),
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
                  Text(projectContent!)
                ],
              ),
            ),
          ),
          const BottomBar()
        ]);
  }
}
