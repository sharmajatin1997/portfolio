import 'package:flutter/material.dart';
import 'package:portfolio/components/home/project_cards.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/responsive.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key, this.crossAxisCount=3, this.childAspectRatio=1.3}) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text("My Projects", style: Theme.of(context).textTheme.titleLarge),
        ),
        const SizedBox(height: defaultPadding,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: demoProjects.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: defaultPadding/2,
                  childAspectRatio: childAspectRatio,
                  mainAxisSpacing: defaultPadding/2),
              itemBuilder: (context, index) => ProjectCards(projects: demoProjects[index])),
        )
      ],
    );
  }
}