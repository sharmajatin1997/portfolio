import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/content/project_content.dart';
import 'package:portfolio/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding*2),
      child: AspectRatio(
        aspectRatio:Responsive.isDesktop(context)?2.5: 1.5,
        child: Stack(fit: StackFit.expand,
          children: [
            Container(
              color: darkColor,
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child:  Column(
                children: [
                  const Spacer(),
                  Text("Contact Us",
                      style: Responsive.isDesktop(context)?
                      Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ):Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ) ),
                  const Text("Please feel free to reach out to me using the provided contact information.",style: TextStyle(fontSize: 13,color: bodyTextColor),textAlign: TextAlign.center),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right:Responsive.isMobile(context)? defaultPadding/4:defaultPadding/2),
                            child: SvgPicture.asset("assets/icons/email.svg",height:Responsive.isMobile(context)?15:30,width: Responsive.isMobile(context)?15:30),
                          ),
                          Text("Jbhardwaj304@gmail.com",style:Responsive.isMobile(context)?
                          const TextStyle(color: primaryColor,fontWeight: FontWeight.w500,fontSize: 10):
                          const TextStyle(color: primaryColor,fontWeight: FontWeight.w700)
                          ),
                        ],
                      ),
                      const SizedBox(width: defaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right:Responsive.isMobile(context)? defaultPadding/4:defaultPadding/2),
                            child: SvgPicture.asset("assets/icons/phone.svg",height:Responsive.isMobile(context)?15:30,width: Responsive.isMobile(context)?15:30),
                          ),
                          Text("+91-9877045732",style:Responsive.isMobile(context)?
                          const TextStyle(color: primaryColor,fontWeight: FontWeight.w500,fontSize: 10):
                          const TextStyle(color: primaryColor,fontWeight: FontWeight.w700)
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: defaultPadding/2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right:Responsive.isMobile(context)? defaultPadding/4:defaultPadding/2),
                        child: SvgPicture.asset("assets/icons/location.svg",height:Responsive.isMobile(context)?15:30,width: Responsive.isMobile(context)?15:30),
                      ),
                      Text("SBP HOMES, Extension 3, Airport road, Mohali",style:Responsive.isMobile(context)?
                      const TextStyle(color: primaryColor,fontWeight: FontWeight.w500,fontSize: 10):
                      const TextStyle(color: primaryColor,fontWeight: FontWeight.w700)
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(ProjectContent.contactInfo,style: const TextStyle(fontSize: 12,color: bodyTextColor),textAlign: TextAlign.center),
                  const Spacer(),
                ],
              ),
            ),
          ],),
      ),
    );
  }
}