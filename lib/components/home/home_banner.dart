import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/about.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      WillPopScope(
        onWillPop: (){
          exit(0);
          // return Future(() => false);
        },
        child: AspectRatio(
          aspectRatio: 3,
          child: Stack(fit: StackFit.expand,
              children:[
                Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,),
                Container(
                  color: darkColor.withOpacity(0.7),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Discover My Amazing\nData Space",
                          style: Responsive.isDesktop(context)?
                         Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ):Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ) ),
                      Padding(
                        padding: const EdgeInsets.only(top: defaultPadding/2),
                        child: DefaultTextStyle(
                          style: Theme.of(context).textTheme.titleMedium!,
                          child: Row(
                            children: [
                              if(!Responsive.isMobile(context))
                                const Text.rich(TextSpan(
                                  text: '<',
                                  children: [
                                    TextSpan(
                                        text: "Flutter & Android",
                                        style: TextStyle(color: primaryColor)
                                    ),
                                    TextSpan(
                                        text: ">  "
                                    )
                                  ]
                              )),
                              const Text("I Build "),
                              AnimatedTextKit(animatedTexts: [
                                TyperAnimatedText("Responsive web and mobile apps.",speed: const Duration(milliseconds: 50)),
                                TyperAnimatedText("Create Live Streaming app.",speed: const Duration(milliseconds: 50)),
                                TyperAnimatedText("Chat App with firebase & socket.",speed: const Duration(milliseconds: 50)),
                                TyperAnimatedText("Create Magazine & Newspaper app.",speed: const Duration(milliseconds: 50)),
                                TyperAnimatedText("Tracking apps.",speed: const Duration(milliseconds: 50)),
                                TyperAnimatedText("Workout app for Android Tv.",speed: const Duration(milliseconds: 50)),
                              ]),

                            ],
                          ),
                        ),
                      ),
                      Responsive.isMobile(context)?
                        const SizedBox(height:defaultPadding/4):
                      const SizedBox(height:defaultPadding*2),
                      Responsive.isMobileLarge(context)?Container(): ElevatedButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutScreen()),
                        );
                      },
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: defaultPadding*2,vertical: defaultPadding),
                              backgroundColor: primaryColor
                          ),
                          child: const Text("ABOUT ME",style: TextStyle(color: darkColor,fontWeight: FontWeight.w700),))
                    ],
                  ),
                )
              ])
    ),
      );
  }
}