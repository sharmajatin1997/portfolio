import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({Key? key,this.title,this.animationMessage}) : super(key: key);

  final String? title;
  final String? animationMessage;


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Stack(fit: StackFit.expand,
            children:[
              Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,),
              Container(
                color: darkColor.withOpacity(0.7),
              ),
              Positioned(
                  right:Responsive.isMobile(context)?defaultPadding/2:defaultPadding,
                  top: Responsive.isMobile(context)?defaultPadding/2:defaultPadding,
                  child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Text("Close",style: TextStyle(color: primaryColor,fontSize: 14,decoration: TextDecoration.underline)))),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(title??"",
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
                        child: AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                          TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50),textStyle: const TextStyle(color: primaryColor)),
                        ]),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              )
            ])
    );
  }
}