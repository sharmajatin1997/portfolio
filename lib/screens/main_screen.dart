import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

import '../components/sidemenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key,required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          exit(0);
          // return Future(() => false);
        },
      child: Scaffold(
        appBar: Responsive.isDesktop(context)?null: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          leading: Builder(builder: (context) =>  IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)
          ))
        ),
        drawer: const SideMenu(),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                  const Expanded(flex: 2, child: SideMenu()),
                Expanded(
                    flex: 8,
                    child: SingleChildScrollView(
                     child: Column(
                       children: [
                         ...children
                       ],
                     ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

