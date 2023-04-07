import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tab;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.mobileLarge,
    this.tab,
    required this.desktop
}):super (key: key);

  static bool isMobile(BuildContext context)=>
      MediaQuery.of(context).size.width<=450;

  static bool isMobileLarge(BuildContext context)=>
      MediaQuery.of(context).size.width<=700;

  static bool isTab(BuildContext context)=>
      MediaQuery.of(context).size.width <1024;

  static bool isDesktop(BuildContext context)=>
      MediaQuery.of(context).size.width >= 1024;

  static screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    if(size.width>=1024){
      return desktop;
    }
    else if(size.width>=700 && tab!=null){
      return tab!;
    }
    else if(size.width>=450 && mobileLarge!=null){
      return mobileLarge!;
    }else{
      return mobile;
    }
  }
}
