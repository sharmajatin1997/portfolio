import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectBanner extends StatelessWidget {
  const ProjectBanner({Key? key,this.title,this.animationMessage,this.projectType,this.projectLink}) : super(key: key);

  final String? title;
  final String? animationMessage;
  final String? projectType;
  final String? projectLink;

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
                       Theme.of(context).textTheme.headline3?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ):Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ) ),
                    Padding(
                      padding: const EdgeInsets.only(top: defaultPadding/2),
                      child: DefaultTextStyle(
                        style: Theme.of(context).textTheme.subtitle1!,
                        child: Row(
                          children: [
                            Text.rich(TextSpan(
                                text: '<',
                                children: [
                                  TextSpan(
                                      text: projectType??"",
                                      style: const TextStyle(color: primaryColor)
                                  ),
                                  const TextSpan(
                                      text: ">  "
                                  )
                                ]
                            )),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50)),
                              TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50)),
                              TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50)),
                              TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50)),
                              TyperAnimatedText(animationMessage??"",speed: const Duration(milliseconds: 50)),
                            ]),

                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        Uri url = Uri.parse(projectLink!);
                        _launchUrl(url);
                      },
                      child: Container(
                        margin: Responsive.isMobile(context)?const EdgeInsets.all(defaultPadding/4):const EdgeInsets.all(defaultPadding/2),
                        padding: Responsive.isMobile(context)?const EdgeInsets.all(defaultPadding/4):const EdgeInsets.all(defaultPadding/2),
                        width: Responsive.screenWidth(context)/3,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(defaultPadding/2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white38,
                              offset: Offset(
                                  0,0
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right:Responsive.isMobile(context)? defaultPadding/4:defaultPadding/2),
                              child: SvgPicture.asset("assets/icons/google_play.svg",height:Responsive.isMobile(context)?15:30,width: Responsive.isMobile(context)?15:30),
                            ),
                            Text(Responsive.isDesktop(context)?"View App on Playstore":"View App",style:Responsive.isMobile(context)?
                            const TextStyle(color: primaryColor,fontWeight: FontWeight.w500,fontSize: 10):
                            const TextStyle(color: primaryColor,fontWeight: FontWeight.w700)
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Spacer(),
                  ],
                ),
              )
            ])
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}