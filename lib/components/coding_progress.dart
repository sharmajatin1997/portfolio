import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class CodingProgress extends StatelessWidget {
  const CodingProgress({Key? key,required this.percentage,required this.text}) : super(key: key);

  final double percentage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: percentage), duration: defaultDuration, builder: (context,double value, child)=>
        Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text,style:const TextStyle(color: Colors.white,fontSize: 12),),
                  Text("${(value*100).toInt()}%",style:Theme.of(context).textTheme.titleSmall ,),
                ]),
            const SizedBox(height: defaultPadding/4),
            LinearProgressIndicator(
              color: primaryColor,
              backgroundColor: darkColor,
              value: value,
            ),
            const SizedBox(height: defaultPadding),
          ],
        ));
  }
}