import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HighLightedTextWithCounter extends StatelessWidget {
  const HighLightedTextWithCounter({Key? key,this.title,required this.counter}) : super(key: key);

  final String? title;
  final Widget counter;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        counter,
        const SizedBox(width:defaultPadding/4,),
        Text(title??"",style:  Responsive.isMobile(context)? const TextStyle(color: bodyTextColor1,fontSize: 11) :
        Theme.of(context).textTheme.titleMedium)
      ],
    );
  }
}