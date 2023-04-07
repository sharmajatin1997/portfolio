import 'package:flutter/material.dart';
import 'package:portfolio/components/home/bottom_bar.dart';
import 'package:portfolio/components/home/highlight_info_projects.dart';
import 'package:portfolio/components/home/home_banner.dart';
import 'package:portfolio/components/home/project_list.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      HighLightedInfoProjects(),
      Responsive(
        mobile: ProjectList(crossAxisCount: 1, childAspectRatio: 2),
        mobileLarge: ProjectList(crossAxisCount: 2),
        tab: ProjectList(childAspectRatio: 1.1),
        desktop: ProjectList(),
      ),
      BottomBar()
    ]);
  }
}


