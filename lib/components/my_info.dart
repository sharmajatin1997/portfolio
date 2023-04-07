import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/about.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.30,
      child:
          Container(
            color: const Color(0xFF242430),
            child: Stack(
              children:[
                Responsive.isMobileLarge(context)?
                Positioned(
                    right: defaultPadding/4,
                    top: defaultPadding/2,
                    child: TextButton(onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AboutScreen()),
                      );
                      Scaffold.of(context).closeDrawer();
                    },
                        style: TextButton.styleFrom(backgroundColor: secondaryColor),
                        child: const Text("About Me>>",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w400,fontSize: 12)))):Container(),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/jatin.jpg'),
                    ),
                    const Spacer(),
                    Text("Jatin Sharma",
                        style: Theme.of(context).textTheme.subtitle1),
                    const Text("Android & Flutter Developer",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            height: 1.5,
                            color: bodyTextColor),
                        textAlign: TextAlign.center),
                    const Spacer(
                      flex: 2,
                    )
                  ],
              ),
                ),
              ]
            ),
          ),
    );
  }
}