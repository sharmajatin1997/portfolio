import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class AnimatedCounterText extends StatelessWidget {
  const AnimatedCounterText({Key? key,required this.counter,required this.text}) : super(key: key);

  final int counter;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0,end: counter),
        duration: const Duration(seconds: 3),
        builder: (context, value, child) =>
            Text("$value$text",style:
            Responsive.isDesktop(context)?
            Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: primaryColor,
                fontWeight:FontWeight.w500

            ):
            Responsive.isMobile(context)?Theme.of(context).textTheme.titleMedium!.copyWith(
                color: primaryColor,
                fontWeight:FontWeight.w500
            ) :
            Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
                fontWeight:FontWeight.w500
            ))
    );
  }
}