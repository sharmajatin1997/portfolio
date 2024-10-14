import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  const AnimatedProgressIndicator({Key? key,required this.percentage,required this.text}) : super(key: key);

  final double percentage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: percentage), duration: defaultDuration, builder: (context,double value, child)=>
              Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(child: Text("${(value*100).toInt()}%",style: Theme.of(context).textTheme.titleMedium,))
                ],
              )
          ),
        ),
        const SizedBox(height: defaultPadding/2,),
        Text(text,style: Theme.of(context).textTheme.titleSmall,maxLines: 1,overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}