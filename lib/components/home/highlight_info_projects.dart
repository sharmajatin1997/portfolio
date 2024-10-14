import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

import 'animated_counter_text.dart';
import 'highlighted_text_counter.dart';

class HighLightedInfoProjects extends StatelessWidget {
  const HighLightedInfoProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: defaultPadding),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLightedTextWithCounter(counter:AnimatedCounterText(counter: 10,text: "+"),title: "App live on play store & app store",),
                HighLightedTextWithCounter(counter:AnimatedCounterText(counter: 50,text: "+"),title: "Github projects",),
              ],
            )
        ),
      ],
    );
  }
}