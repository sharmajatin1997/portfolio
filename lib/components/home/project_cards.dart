import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/project_screen.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({Key? key, required this.projects}) : super(key: key);

  final Projects projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding/2),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(projects.title!,maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            Text(projects.description!,
                maxLines:Responsive.isMobileLarge(context)?3: 4,
                overflow: TextOverflow.ellipsis,
                style:
                TextStyle(height: Responsive.isMobileLarge(context)?1.2:1.5,color: bodyTextColor,fontSize: 11)),
            const Spacer(),
            TextButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjectDetailScreen(animationMessage:projects.animationMessage,projectLink: projects.projectLink,title: projects.title,projectType: projects.projectType,projectContent: projects.longContent,iosLink:projects.iosLink)),
              );
              },
                style: TextButton.styleFrom(backgroundColor: secondaryColor),
                child: const Text("Read More>>",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w700)))
          ],
        ),
      ),
    );
  }
}